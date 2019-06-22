var SelectorOrg = {
    props: {
        $fieldId: null,
        $fieldName: null,
        baseUrl: null,
        parent: null,
        single: 0,
        showOtherOrg: false,
        clickMode: '0'
    },
    checkTreeObj: null,
    load: function() {
        $(document).on('click', '#vk_org_tree a[key]', function() {
            SelectorOrg.get($(this).attr('key'));
        });
        $(document).on('click', '.selector-footer a', function() {
            SelectorOrg.confirm();
        });
        //已选全部取消
        $('#vk_org_selected_item thead i[name=cancelAll]').live('click', function() {
            $('#vk_org_selected_item tbody').html('');
            $('#vk_user_group_item tbody tr[class="user_selected"]').each(function() {
                $(this).find("span").hide();
                $(this).removeClass("user_selected");
            });
            $('#vk_org_item tbody').html('');
            $('#selected-counter').html('');
        });
        $('#vk_user_group_item tbody tr[data-type="org"]').live('click', function() {
            var self = $(this);
            if ($('#vk_org_selected_item tbody tr[item_id=' + self.attr('item_id') + ']').length > 0) {
                $('#vk_org_selected_item tbody tr[item_id=' + self.attr('item_id') + ']').trigger('click');
                $("#vk_user_group_item  tbody tr[item_id=" + self.attr('item_id') + "]").find("span").hide();
                $("#vk_user_group_item  tbody tr[item_id=" + self.attr('item_id') + "]").removeClass("user_selected");
            } else {
                $('#vk_org_item tbody').append('<tr id="org_' + self.attr("item_id") + '" item_name="' + self.attr("item_name") + '" item_id="' + self.attr("item_id") + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + self.attr("item_name") + '</td></tr>');
                $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + self.attr("item_id") + '" item_name="' + self.attr("item_name") + '" item_id="' + self.attr("item_id") + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + self.attr("item_name") + '</td></tr>');
                $("#vk_user_group_item  tbody tr[item_id=" + self.attr('item_id') + "]").find("span").show();
                $("#vk_user_group_item  tbody tr[item_id=" + self.attr('item_id') + "]").addClass("user_selected");
            }
            SelectorOrg.counter();
        });
        $('#vk_org_item tbody tr').live('click', function() {
            if ($('#vk_org_selected_item tbody tr[item_id=' + $(this).attr('item_id') + ']').length > 0) {
                $('#vk_org_selected_item tbody tr[item_id=' + $(this).attr('item_id') + ']').remove();
            }
            if ($('#vk_user_group_item tbody tr[item_id=' + $(this).attr('item_id') + ']').length > 0) {
                $("#vk_user_group_item  tbody tr[item_id=" + $(this).attr('item_id') + "]").find("span").hide();
                $("#vk_user_group_item  tbody tr[item_id=" + $(this).attr('item_id') + "]").removeClass("user_selected");
            }
            $(this).remove();
            var treeNode = zTree_orgTree.getNodeByParam('id', $(this).attr('item_id'), null);
            if (treeNode && treeNode.checked) {
                zTree_orgTree.checkNode(treeNode, false, false);
            }
            if (SelectorOrg.props.showOtherOrg) {
                var treeOtherNode = zTree_orgOtherTree.getNodeByParam('id', $(this).attr('item_id'), null);
                if (treeOtherNode && treeOtherNode.checked) {
                    zTree_orgOtherTree.checkNode(treeOtherNode, false, false);
                }
            }
            SelectorOrg.counter();
        });
        $('#vk_org_selected_item tbody tr').live('click', function() {
            if ($('#vk_org_item tbody tr[item_id=' + $(this).attr('item_id') + ']').length > 0) {
                $('#vk_org_item tbody tr[item_id=' + $(this).attr('item_id') + ']').remove();
            }
            if ($('#vk_user_group_item tbody tr[item_id=' + $(this).attr('item_id') + ']').length > 0) {
                $("#vk_user_group_item  tbody tr[item_id=" + $(this).attr('item_id') + "]").find("span").hide();
                $("#vk_user_group_item  tbody tr[item_id=" + $(this).attr('item_id') + "]").removeClass("user_selected");
            }
            $(this).remove();
            var treeNode = zTree_orgTree.getNodeByParam('id', $(this).attr('item_id'), null);
            if (treeNode && treeNode.checked) {
                zTree_orgTree.checkNode(treeNode, false, false);
            }
            if (SelectorOrg.props.showOtherOrg) {
                var treeOtherNode = zTree_orgOtherTree.getNodeByParam('id', $(this).attr('item_id'), null);
                if (treeOtherNode && treeOtherNode.checked) {
                    zTree_orgOtherTree.checkNode(treeOtherNode, false, false);
                }
            }
            SelectorOrg.counter();
        });
        var ids = this.props['$fieldId'].val();
        if (ids && ids != ',') {
            $("#tab_selected").addClass("active");
            $(".selector-nav").find("li").removeClass("active");
            $(".selector-nav a[block=selected]").parent().addClass("active");
        } else {
            $("#tab_org").addClass("active");
            $(".selector-nav").find("li").removeClass("active");
            $(".selector-nav a[block=org]").parent().addClass("active");
        }
        SelectorOrg.initItem();
        SelectorOrg.counter();
    },
    init: function(fieldId, fieldName) {
        this.props['$fieldId'] = $('#' + fieldId, this.props.parent.document);
        this.props['$fieldName'] = $('#' + fieldName, this.props.parent.document);
    },
    zTreeOnClick: function(event, treeId, treeNode) {
        var zTreeObj = treeId === 'orgTree' ? zTree_orgTree : zTree_orgOtherTree;
        if (!treeNode.noclick) {
            if (SelectorOrg.props.single === 1) {
                $('#vk_org_item tbody tr').each(function () {
                    $(this).remove();
                });
                $('#vk_org_selected_item tbody tr').each(function () {
                    $(this).remove();
                });
                itemId = treeNode.id;
                $('#vk_org_item tbody').append('<tr id="org_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                SelectorOrg.counter();
                return;
            } 
            if (treeNode.checked) {
                zTreeObj.checkNode(treeNode, false, false);
                if ($('#org_' + treeNode.id).length > 0 && treeNode.id != 0)
                    $('#org_' + treeNode.id).remove();

                if ($('#org_selected_' + treeNode.id).length > 0)
                    $('#org_selected_' + treeNode.id).remove();

                if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.id + ']').length > 0) {
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").find("span").hide();
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").removeClass("user_selected");
                }
            } else {
                if (SelectorOrg.props.single === 0) {
                    if (SelectorOrg.props.clickMode == 1) {
                        zTreeObj.checkNode(treeNode, true, false);
                        var itemId;
                        if (SelectorOrg.props.codeValue == 1) {
                            itemId = treeNode.org_no;
                        } else {
                            itemId = treeNode.id;
                        }
                        if (!$('#org_' + treeNode.id).length && treeNode.id != 0) {
                            $('#vk_org_item tbody').append('<tr id="org_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                            $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                            if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.id + ']').length > 0) {
                                $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").find("span").show();
                                $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").addClass("user_selected");
                            }
                        }
                    } else if (SelectorOrg.props.clickMode == 2) {
                        zTreeObj.checkNode(treeNode, true, false);
                        SelectorOrg.zTreeOnCheck(event, treeId, treeNode);
                    } else {
                        zTreeObj.checkNode(treeNode, true, true);
                        SelectorOrg.zTreeOnCheck(event, treeId, treeNode);
                    }
                } else {
                    $('#vk_org_item tbody tr').remove();
                    var itemId;
                    if (SelectorOrg.props.codeValue == 1) {
                        itemId = treeNode.org_no;
                    } else {
                        itemId = treeNode.id;
                    }
                    if (!$('#org_' + treeNode.id).length && treeNode.id != 0) {
                        $('#vk_org_item tbody').append('<tr id="org_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                        $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                        if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.id + ']').length > 0) {
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").find("span").show();
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").addClass("user_selected");
                        }
                    }
                }
            }
            SelectorOrg.counter();
        }
    },
    zTreeOnCheck: function(event, treeId, treeNode) {
        SelectorOrg.checkTreeObj = treeId === 'orgTree' ? zTree_orgTree : zTree_orgOtherTree;
        if (treeNode.checked) {
            var itemId;
            if (SelectorOrg.props.codeValue == 1) {
                itemId = treeNode.org_no;
            } else {
                itemId = treeNode.id;
            }
            if (!$('#org_' + treeNode.id).length && treeNode.id != 0 && !treeNode.noclick) {
                $('#vk_org_item tbody').append('<tr id="org_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.id + '" item_name="' + treeNode.name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.name + '</td></tr>');
                if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.id + ']').length > 0) {
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").find("span").show();
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").addClass("user_selected");
                }
            }
            SelectorOrg.checkChildOrg(treeNode);
        } else {
            if ($('#org_' + treeNode.id).length > 0)
                $('#org_' + treeNode.id).remove();
            if ($('#org_selected_' + treeNode.id).length > 0)
                $('#org_selected_' + treeNode.id).remove();
            
            if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.id + ']').length > 0) {
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").find("span").hide();
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.id + "]").removeClass("user_selected");
            }
            SelectorOrg.uncheckChildOrg(treeNode);
        }
        SelectorOrg.counter();
    },
    checkChildOrg: function(treeNode) {
        if (treeNode.hasOwnProperty('children')) {
            var itemId;
            for (var i = 0; i < treeNode.children.length; i++) {
                if (SelectorOrg.props.clickMode == 2) {
                    SelectorOrg.checkTreeObj.checkNode(treeNode.children[i], true, false);
                    if (SelectorOrg.props.codeValue == 1) {
                        itemId = treeNode.children[i].org_no;
                    } else {
                        itemId = treeNode.children[i].id;
                    }
                    if (!$('#org_' + treeNode.children[i].id).length && !treeNode.children[i].noclick) {
                        $('#vk_org_item tbody').append('<tr id="org_' + treeNode.children[i].id + '" item_name="' + treeNode.children[i].name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.children[i].name + '</td></tr>');
                        $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.children[i].id + '" item_name="' + treeNode.children[i].name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.children[i].name + '</td></tr>');

                        if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.children[i].id + ']').length > 0) {
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").find("span").show();
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").addClass("user_selected");
                        }
                    }
                } else {
                    if (SelectorOrg.props.codeValue == 1) {
                        itemId = treeNode.children[i].org_no;
                    } else {
                        itemId = treeNode.children[i].id;
                    }
                    if (!$('#org_' + treeNode.children[i].id).length && !treeNode.children[i].noclick) {
                        $('#vk_org_item tbody').append('<tr id="org_' + treeNode.children[i].id + '" item_name="' + treeNode.children[i].name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.children[i].name + '</td></tr>');
                        $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + treeNode.children[i].id + '" item_name="' + treeNode.children[i].name + '" item_id="' + itemId + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + treeNode.children[i].name + '</td></tr>');
                        if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.children[i].id + ']').length > 0) {
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").find("span").show();
                            $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").addClass("user_selected");
                        }
                    }
                    SelectorOrg.checkChildOrg(treeNode.children[i]);
                }
            }
        }
    },
    uncheckChildOrg: function(treeNode) {
        if (treeNode.hasOwnProperty('children')) {
            for (var i = 0; i < treeNode.children.length; i++) {
                if ($('#org_' + treeNode.children[i].id).length > 0)
                    $('#org_' + treeNode.children[i].id).remove();

                if ($('#org_selected_' + treeNode.children[i].id).length > 0)
                    $('#org_selected_' + treeNode.children[i].id).remove();

                if ($('#vk_user_group_item tbody tr[item_id=' + treeNode.children[i].id + ']').length > 0) {
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").find("span").hide();
                    $("#vk_user_group_item  tbody tr[item_id=" + treeNode.children[i].id + "]").removeClass("user_selected");
                }
                SelectorOrg.uncheckChildOrg(treeNode.children[i]);
            }
        }
    },
    counter: function() {
        $('#selected-counter').remove();
        var length = $('#vk_org_selected_item tbody tr').length;
        if (length == 0) {
            var treeNode = zTree_orgTree.getNodeByParam('id', 0, null);
            var selectNodes = zTree_orgTree.getSelectedNodes();
            if (selectNodes.length > 0) {
                for (var i = 0; i < selectNodes.length; i++)
                    zTree_orgTree.cancelSelectedNode(selectNodes[i]);
            }
            if (treeNode && treeNode.checked) {
                zTree_orgTree.checkNode(treeNode, false, false);
            }
            if (SelectorOrg.props.showOtherOrg) {
                var treeOtherNode = zTree_orgOtherTree.getNodeByParam('id', 0, null);
                var selectOtherNodes = zTree_orgOtherTree.getSelectedNodes();
                if (selectOtherNodes.length > 0) {
                    for (var i = 0; i < selectOtherNodes.length; i++)
                        zTree_orgOtherTree.cancelSelectedNode(selectOtherNodes[i]);
                }
                if (treeOtherNode && treeOtherNode.checked) {
                    zTree_orgOtherTree.checkNode(treeOtherNode, false, false);
                }
            }
        } else {
            $('#selected_labels').html('<span class="pull-left" id="selected-counter">共选中<em style="font-size:20px;color:#f21717"> ' + length + ' </em>个部门</span>');
        }
    },
    confirm: function() {
        var orgNames = '', orgIds = '';
        if ($('#vk_org_item tbody tr').length > 0) {
            $('#vk_org_item tbody tr').each(function() {
                orgNames += $(this).attr('item_name') + ',';
                orgIds += $(this).attr('item_id') + ',';
            });
        }
        if (SelectorOrg.props.single !== 0) {
            orgNames = orgNames.substr(0, orgNames.length - 1);
            orgIds = orgIds.substr(0, orgIds.length - 1);
        }
        SelectorOrg.props.$fieldName.val(orgNames);
        SelectorOrg.props.$fieldId.val(orgIds);
        SelectorOrg.close();
    },
    initItem: function() {
        var ids = this.props['$fieldId'].val();
        if ($('#vk_org_item tbody tr').length > 0)
            $('#vk_org_item tbody tr').remove();
        if (ids && ids != ',') {
            ids = ids.substr(ids.length - 1) == ',' ? ids.substr(0, ids.length - 1) : ids;
            var idArr = ids.split(',');
            var names = '';
            $.each(idArr, function(i, id) {
                var node = zTree_orgTree.getNodeByParam('id', id, null);
                if (node) {
                    zTree_orgTree.checkNode(node, true, false);
                }
                if (SelectorOrg.props.showOtherOrg) {
                    var otherNode = zTree_orgOtherTree.getNodeByParam('id', id, null);
                    if (otherNode) {
                        zTree_orgOtherTree.checkNode(otherNode, true, false);
                    }
                }
                names += node.name + ',';

                if ($('#org_' + id).length > 0)
                    return true;
                $('#vk_org_item tbody').append('<tr id="org_' + id + '" item_name="' + node.name + '" item_id="' + id + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + node.name + '</td></tr>');
                $('#vk_org_selected_item tbody').append('<tr id="org_selected_' + id + '" item_name="' + node.name + '" item_id="' + id + '" class="org_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>' + node.name + '</td></tr>');
                if ($('#vk_user_group_item tbody tr[item_id=' + id + ']').length > 0) {
                    $("#vk_user_group_item  tbody tr[item_id=" + id + "]").find("span").show();
                    $("#vk_user_group_item  tbody tr[item_id=" + id + "]").addClass("user_selected");
                }
            });
        }
    },
    get: function(key) {
        $.getJSON(this.props['baseUrl'] + '&key=' + key, function(data) {
            $('#vk_org_item').html(data.html);
            SelectorOrg.initItem();
        });
    },
    add: function(Obj) {
        var tid = this.props['$fieldId'];
        var tname = this.props['$fieldName'];
        var id = Obj.attr('item_id');
        var name = Obj.attr('item_name');

        if (tid.val().indexOf(id + ',') !== 0 && tid.val().indexOf(',' + id + ',') <= 0) {
            tid.attr('value', function() {
                return this.value + id + ',';
            });
            tname.attr('value', function() {
                return this.value + name + ',';
            });
        }
    },
    del: function(Obj) {
        var tid = this.props['$fieldId'];
        var tname = this.props['$fieldName'];
        var id = Obj.attr('item_id');
        var name = Obj.attr('item_name');

        if (tid.val().indexOf(id + ',') === 0 || tid.val().indexOf(',' + id + ',') > 0) {
            if (tid.val().indexOf(id + ',') === 0)
                tid.val(tid.val().substr(id.length + 1));
            else
                tid.val(tid.val().replace(',' + id + ',', ','));

            if (tname.val().indexOf(name + ',') === 0)
                tname.val(tname.val().substr(name.length + 1));
            else
                tname.val(tname.val().replace(',' + name + ',', ','));
        }
    },
    close: function() {
        window.close();
    }
};