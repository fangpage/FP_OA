var SelectorUser = {
    settings: {
        'hiddenIds': null,
        'userNames': null,
        'modalId': null,
        'callback': null,
        'beforeShow': null,
        'single': 0
    },
    filter: false,
    baseUrl: null,
    block: null,
    showOtherOrg: null,
    clickOtherTree: false,
    treeNode: null,
    urlParams: {},
    aOrgIds: [],
    users: [],
    orgUserInfo: [],
    roleUserInfo: [],
    parent: null,
    init: function(options) {
        this.settings = $.extend(this.settings, options || {});
    },
    load: function() {
        //顶部标签点击事件
        $('.selector-nav a').on('click', function() {
            SelectorUser.block = $(this).attr('block');//selected 已选 org 部门
            SelectorUser.urlParams.action = SelectorUser.block;
            if (SelectorUser.block == 'org') {
                SelectorUser.initOrg();
                if (SelectorUser.showOtherOrg) {
                    SelectorUser.initOtherOrg();
                }
            } 
            SelectorUser.urlParams = {};
        });
        SelectorUser.bindClick();

        this.users = [];
        this.treeNode = null;
        $('#tab_selected tbody').html('');
        $('#selected-counter').html('');
        $('.search-query').val('');

        if (this.settings.hiddenIds && this.settings.userNames) {
            var $userid = $('#' + this.settings.hiddenIds, this.parent.document),
                    $username = $('#' + this.settings.userNames, this.parent.document),
                    userid = $.trim($userid.val()),
                    username = $.trim($username.val());
            if (userid && username) {
                var ui = userid.split(','),
                        un = username.split(',');
                for (i in ui) {
                    if (ui[i]) {
                        this.users.push({
                            'id': ui[i],
                            'name': un[i]
                        });
                    }
                }
            }
        }

        if (this.users.length > 0) {
            $('.selector-nav a[block="selected"]').trigger('click');
            this.initSelected();
        } else {
            $('.selector-nav a[block="org"]').trigger('click');
        }

        if (typeof this.settings.beforeShow === 'function') {
            this.settings.beforeShow();
        }
    },
    //触发条件，存在已选用户 0次或1次
    initSelected: function() {
        if (this.users.length > 0) {
            for (i in this.users) {
                this.add(this.users[i].id, this.users[i].name);
            }
        }
    },
    //更新用户选中状态
    initStatus: function() {
        $('#vk_user_' + SelectorUser.block + '_item tbody > tr').removeClass();
        $('#vk_user_' + SelectorUser.block + '_item tbody > tr').find('span').hide();
        $('#vk_user_selected_item tbody tr').each(function() {
            var item_id = $(this).attr('item_id');
            if ($('#vk_user_' + SelectorUser.block + '_item tbody tr[item_id="' + item_id + '"]').length > 0) {
                $('#vk_user_' + SelectorUser.block + '_item tbody tr[item_id="' + item_id + '"]').find('span').show();
                $('#vk_user_' + SelectorUser.block + '_item tbody tr[item_id="' + item_id + '"]').addClass('user_selected');
            }
        });
    },
    initOrg: function() {
        var checkedNodes = zTree_orgUserTree.getCheckedNodes();
        if (checkedNodes.length > 0) {
            $.each(checkedNodes, function(i, node) {
                zTree_orgUserTree.checkNode(checkedNodes[i], false, true);
            });
        }
        //第一次选人
        if (this.block == 'org' && typeof (SelectorUser.urlParams['org']) == 'undefined') {
            SelectorUser.urlParams.org = SelectorUser.treeNode == null ? SelectorUser.curOrgID : SelectorUser.treeNode.id;//切换tab时，回来选中上次点击节点
            zTree_orgUserTree.selectNode(zTree_orgUserTree.getNodeByParam('id', SelectorUser.urlParams.org, null));
            if (SelectorUser.treeNode == null) {//初始化 切换tab
                var htmlStr = SelectorUser.beforeRenderHtml();
                if (htmlStr != '') {
                    $('#vk_user_org_item').find('tbody').html(htmlStr);
                }
            }
        }
        SelectorUser.initStatus();
    },
    initOtherOrg: function() {
        var checkedNodes = zTree_orgOtherUserTree.getCheckedNodes();
        if (checkedNodes.length > 0) {
            $.each(checkedNodes, function(i, node) {
                zTree_orgOtherUserTree.checkNode(checkedNodes[i], false, true);
            });
        }
        //第一次选人
        if (this.block == 'org' && typeof (SelectorUser.urlParams['org']) == 'undefined') {
            SelectorUser.urlParams.org = SelectorUser.treeNode == null ? SelectorUser.curOrgID : SelectorUser.treeNode.id;//切换tab时，回来选中上次点击节点
            zTree_orgOtherUserTree.selectNode(zTree_orgOtherUserTree.getNodeByParam('id', SelectorUser.urlParams.org, null));
            if (SelectorUser.treeNode == null) {//初始化 切换tab
                var htmlStr = SelectorUser.beforeRenderHtml();
                if (htmlStr != '') {
                    $('#vk_user_org_item').find('tbody').html(htmlStr);
                }
            }
        }
        SelectorUser.initStatus();
    },
    bindClick: function() {
        //绑定tr click 事件
        if (SelectorUser.settings.single === 0) {
            $('.selector-user tbody tr[data-type="user"]').live('click', SelectorUser.trClickE);
        } else {
            $('.selector-user tbody tr[data-type="user"]').live('click', SelectorUser.trSingleClickE);
        }

        //全选 action org role group
        $('.selector-user i[name="checkStatu"]').live('click', function() {
            var curClass = $(this).attr('class');
            if (curClass == 'icon-checkbox-unchecked') {
                if ($('#vk_user_' + SelectorUser.block + '_item tbody tr').length > 0) {
                    $('#vk_user_' + SelectorUser.block + '_item tbody tr').each(function() {
                        if (typeof ($(this).attr('item_id')) != 'undefined') {
                            $(this).addClass('user_selected');
                            $(this).find('span').show();
                            SelectorUser.add($(this).attr('item_id'), $(this).attr('item_name'));
                        }
                    });
                }
                $(this).removeClass(curClass).addClass('icon-checkbox-checked');
                $(this).attr('data-original-title', '全部取消');
            } else {
                if ($('#vk_user_' + SelectorUser.block + '_item tbody tr[class="user_selected"]').length > 0) {
                    $('#vk_user_' + SelectorUser.block + '_item tbody tr[class="user_selected"]').each(function() {
                        $(this).removeClass('user_selected');
                        $(this).find('span').hide();
                        SelectorUser.del($(this).attr('item_id'), $(this).attr('item_name'));
                    });
                }
                $(this).removeClass(curClass).addClass('icon-checkbox-unchecked');
                $(this).attr('data-original-title', '全选');
            }
        });

        //已选全部取消
        $('#vk_user_selected_item thead i[name=cancelAll]').live('click', function() {
            $('#vk_user_selected_item tbody').html('');
            $('#selected-counter').html('');
        });
        // 已选人员点击事件 remove
        $('#vk_user_selected_item tbody > tr').live('click', function() {
            SelectorUser.del($(this).attr('item_id'), $(this).attr('item_name'));
        });
        //确认
        $('.selector-footer a').on('click', SelectorUser.confirm);

        //搜索
        $('.selector-user .search-query').keyup(function() {
            var keyword = $(this).val();
            if ($.trim(keyword) == '') {
                $('#vk_user_search_item tbody').html('');
                return;
            }
            else {
                $('[data-toggle="tab"][href="#tab_search"]').tab('show');
                SelectorUser.block = "search";
            }
        });

        $('.selector-user .search-query').autocomplete(SelectorUser.baseUrl, {
            highlight: false,
            extraParams: { action: "search", keyword: function () { return $('#keyword').val(); } },
            formatItem: function (data, i, n, value) {
                var data = eval("(" + data + ")");
                var htmlStr = '';
                if (data) {
                    $.each(data, function(i, userInfo) {
                        if (userInfo) {
                            htmlStr += '<tr item_id="' + userInfo['id'] + '" item_name="' + userInfo['name'] + '" data-type="user"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="display:none;color: #468847;"></span>' + userInfo['name'] + '</td></tr>';
                            SelectorUser.updateSelected(userInfo['id'], userInfo['name']);
                        }
                    });
                    $('#vk_user_search_item tbody').html(htmlStr);
                    SelectorUser.initStatus();
                } else {
                    $('#vk_user_search_item tbody').html('<tr><td style="text-align:center;"><strong>没此用户信息！</strong></td></tr>');
                }
            },
            formatResult: function(data, value) {
                var str = $('.selector-user .search-query').val();
                return  str;
            }
        });
    },
    trClickE: function() {
        if ($(this).hasClass('user_selected')) {
            SelectorUser.del($(this).attr('item_id'), $(this).attr('item_name'));
        } else {
            SelectorUser.add($(this).attr('item_id'), $(this).attr('item_name'));
        }
        $(this).toggleClass('user_selected');
        $(this).find('span').toggle();
    },
    trSingleClickE: function() {
        $('#vk_user_' + SelectorUser.block + '_item tbody > tr').not($(this)).find('span').hide().end().removeClass('user_selected');
        if ($(this).hasClass('user_selected')) {
            SelectorUser.del($(this).attr('item_id'), $(this).attr('item_name'));
        } else {
            $('#vk_user_selected_item tbody').html('');
            $('#selected-counter').html('');

            SelectorUser.add($(this).attr('item_id'), $(this).attr('item_name'));
        }
        $(this).toggleClass('user_selected');
        $(this).find('span').toggle();
    },
    zTreeOnClick: function(event, treeId, treeNode) {
        if (!treeNode.noclick) {
            SelectorUser.clickOtherTree = treeId === 'orgOtherUserTree' ? true : false;
            SelectorUser.treeNode = treeNode;
            SelectorUser.urlParams = {
                action: "org",
                org: treeNode.id
            };
            $('#vk_user_org_item #curOrg i:eq(0)').text(treeNode.name);
            var htmlStr = SelectorUser.beforeRenderHtml();
            var $item = $('#vk_user_' + SelectorUser.block + '_item');
            if ($item.length > 0) {
                $item.find('tbody').html(htmlStr);
                SelectorUser.initStatus();
            }
        }
    },
    zTreeOnCheck: function(event, treeId, treeNode) {
        SelectorUser.clickOtherTree = treeId === 'orgOtherUserTree' ? true : false;
        SelectorUser.treeNode = treeNode;
        var aOrgIds = SelectorUser.getOrgIds(treeNode, []);
        if (treeNode.checked && aOrgIds.length > 0) {
            SelectorUser.urlParams = {
                action: "onchecked",
                orgIds: aOrgIds.toString()
            };
            $('#vk_user_org_item #curOrg i:eq(0)').text(treeNode.name);
            SelectorUser.afterCheck();
        } else {
            SelectorUser.afterUncheck();
        }
    },
    afterCheck: function() {
        var $item = $('#vk_user_org_item');
        var htmlStr = SelectorUser.beforeRenderHtml();
        if (htmlStr && $item.length > 0) {
            $item.find('tbody').html(htmlStr);
            $item.find('tbody tr[class="user_selected"]').each(function() {
                SelectorUser.add($(this).attr('item_id'), $(this).attr('item_name'));
            });
        }
        SelectorUser.initStatus();
        $('#curOrg i[name="checkStatu"]').removeClass().addClass('icon-checkbox-checked');
        $('#curOrg i[name="checkStatu"]').attr('data-original-title', '全部取消');
    },
    afterUncheck: function() {
        var acheckOrgId = SelectorUser.getOrgIds(SelectorUser.treeNode, []);
        $.each(acheckOrgId, function(i, orgId) {
            if (SelectorUser.orgUserInfo[orgId] && SelectorUser.orgUserInfo[orgId] != 'undefined') {
                $.each(SelectorUser.orgUserInfo[orgId], function(i, userInfo) {
                    if (userInfo) {
                        SelectorUser.del(userInfo['id'], userInfo['name']);
                    }
                });
            }
        });
        SelectorUser.initStatus();
        $('#curOrg i[name="checkStatu"]').removeClass().addClass('icon-checkbox-unchecked');
        $('#curOrg i[name="checkStatu"]').attr('data-original-title', '全选');
    },
    beforeRenderHtml: function() {
        var htmlStr = '', jsonData = '';
        if (SelectorUser.urlParams.hasOwnProperty('org')) {//click
            htmlStr = SelectorUser.getHtmlStr(SelectorUser.urlParams.org);
            if (htmlStr == '') {
                jsonData = SelectorUser.getJsonData();
                if (!$.isEmptyObject(jsonData)) {
                    SelectorUser.orgUserInfo[SelectorUser.urlParams.org] = jsonData[SelectorUser.urlParams.org];
                    htmlStr = SelectorUser.getHtmlStr(SelectorUser.urlParams.org);
                }
            }
        } else if (typeof (SelectorUser.urlParams['orgIds']) != 'undefined') {//checked
            var aorgIds = SelectorUser.urlParams.orgIds.split(',');
            var newIds = '';
            //过滤获取不在orgUserInfo数组中的部门 newIds
            $.each(aorgIds, function(i, orgId) {
                if (SelectorUser.orgUserInfo[orgId] && typeof (SelectorUser.orgUserInfo[orgId]) != 'undefined')
                    return true;
                else
                    newIds += orgId + ',';
            });
            newIds = newIds.substr(0, newIds.length - 1);
            if (newIds != '') {
                SelectorUser.urlParams.orgIds = newIds;
                jsonData = SelectorUser.getJsonData();
                $.each(newIds.split(','), function(i, orgId) {
                    if (typeof (jsonData[orgId]) != 'undefined')
                        SelectorUser.orgUserInfo[orgId] = jsonData[orgId];//放入数组中
                });
            }
            $.each(aorgIds, function(i, orgId) {
                htmlStr += SelectorUser.getHtmlStr(orgId, 'user_selected');
            });
        }
        return htmlStr;
    },
    getHtmlStr: function(orgId, trClass) {
        trClass = typeof (trClass) == 'undefined' ? "" : trClass;
        var htmlStr = '';
        if (typeof (SelectorUser.orgUserInfo[orgId]) != 'undefined') {
            if (SelectorUser.clickOtherTree) {
                htmlStr += '<tr style="background-color:#c4de83;"><td style="text-align:center;">' + zTree_orgOtherUserTree.getNodeByParam('id', orgId, null).name + '</td></tr>';
            } else {
                htmlStr += '<tr style="background-color:#c4de83;"><td style="text-align:center;">' + zTree_orgUserTree.getNodeByParam('id', orgId, null).name + '</td></tr>';
            }
            $.each(SelectorUser.orgUserInfo[orgId], function(i, userInfo) {
                if (userInfo) {
                    htmlStr += '<tr item_id="' + userInfo['id'] + '" item_name="' + userInfo['name'] + '" class="' + trClass + '" data-type="user"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="display:none;color: #468847;"></span>' + userInfo['name'] + '</td></tr>';
                }
            });
        }
        return htmlStr;
    },
    getJsonData: function() {
        var jsonData = '';
        $.ajax({
            type: 'POST',
            url: SelectorUser.baseUrl,
            data: SelectorUser.urlParams,
            dataType: 'json',
            async: false,
            success: function(data) {
                jsonData = data;
            },
            error: function(msg) {
                jsonData = false;
            }
        });
        return jsonData;
    },
    getOrgIds: function(treeNode, aOrgIds) {
        if (!treeNode.noclick) {
            aOrgIds.push(treeNode.id);
        }
        if (treeNode.hasOwnProperty('children')) {
            var len = treeNode.children.length;
            for (var i = 0; i < len; i++) {
                SelectorUser.getOrgIds(treeNode.children[i], aOrgIds);
            }
        }
        return aOrgIds;
    },
    add: function(item_id, item_name) {
        SelectorUser.updateSelected(item_id, item_name, 'add');
        SelectorUser.updateCounter();
    },
    del: function(item_id, item_name) {
        SelectorUser.updateSelected(item_id, item_name, 'remove');
        SelectorUser.updateCounter();
    },
    updateSelected: function(item_id, item_name, f) {
        var b = $('#vk_user_selected_item tbody tr[item_id="' + item_id + '"]').length > 0;
        if (f == 'add' && !b) {
            $('#vk_user_selected_item tbody').append('<tr item_name="' + item_name + '" item_id="' + item_id + '" class="user_selected"><td style="text-align:center;">' + item_name + '</td></tr>');
        } else if (f == 'remove' && b) {
            $('#vk_user_selected_item tbody tr[item_id="' + item_id + '"]').remove();
        }
    },
    updateCounter: function() {
        var counter = $('#vk_user_selected_item tbody > tr').length;
        var msg = counter == 0 ? '' : '<span class="pull-left" id="selected-counter">共选中<em style="font-size:20px;color:#f21717"> ' + counter + ' </em>个用户</span>';
        $('#selected_labels').html(msg);
    },
    confirm: function() {
        var backfill = [], self = SelectorUser;

        if ($('#vk_user_selected_item tbody > tr').length > 0) {
            $('#vk_user_selected_item tbody > tr').each(function() {
                backfill.push({
                    'id': $(this).attr('item_id'),
                    'name': $(this).attr('item_name')
                });
            });
        }
        if (self.settings.callback) {
            self.settings.callback(backfill);
        } else if (self.settings.hiddenIds && self.settings.userNames) {
            var $userid = $('#' + self.settings.hiddenIds, self.parent.document),
                    $username = $('#' + self.settings.userNames, self.parent.document),
                    ids = [], names = [];
            if (backfill.length > 0) {
                for (i in backfill) {
                    ids.push(backfill[i].id);
                    names.push(backfill[i].name);
                }
                if (self.settings.single === 0) {
                    $userid.val(ids.join(",") + ',');
                    $username.val(names.join(",") + ',');
                } else {
                    $userid.val(ids.join(","));
                    $username.val(names.join(","));
                }
            } else {
                $userid.val('');
                $username.val('');
            }
        }
        self.close();
    },
    close: function() {
        window.close();
    }
};