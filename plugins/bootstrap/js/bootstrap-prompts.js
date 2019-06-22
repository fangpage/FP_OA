!function ($, window) {
  window._originalAlert = window.alert;
  window.alert = function(text) {
      var bootStrapAlert = function() {
          if(! $.fn.modal.Constructor)
              return false;
          if($('#windowAlertModal').length == 1)
              return true;
          $('body').append(' \
      <div id="windowAlertModal" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true"> \
        <div class="modal-body"> \
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> \
          <p> alert text </p> \
        </div> \
        <div class="modal-footer"> \
          <button class="btn btn-danger" data-dismiss="modal" aria-hidden="true">关闭</button> \
        </div> \
      </div> \
      ');
          return true;
      }
      if ( bootStrapAlert() ){
          $('#windowAlertModal .modal-body p').html(text);
          $('#windowAlertModal').modal();
      }  else {
          window._originalAlert(text);
      }
  }
  window._originalConfirm = window.confirm;
  window.confirm = function(text, cb) {
      var initTemplate = function(){
        if($('#windowConfirmModal').length == 1)
          return true;
        $('body').append(' \
          <div id="windowConfirmModal" class="modal hide fade" tabindex="-1" role="dialog" aria-hidden="true"> \
            <div class="modal-body"> \
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> \
              <p> alert text </p> \
            </div> \
            <div class="modal-footer"> \
              <button class="btn btn-danger btn-ok" data-dismiss="modal" aria-hidden="true">确定</button> \
              <button class="btn btn-cancel" data-dismiss="modal" aria-hidden="true">关闭</button> \
            </div> \
          </div> \
        ');
      }

      var bootStrapConfirm = function() {
        if(! $.fn.modal.Constructor)
            return false;

//        $('body').off('click', '#windowConfirmModal .btn-danger');
//        $('body').off('click', '#windowConfirmModal .btn');
        $('#windowConfirmModal .btn-ok').off('click');
        $('#windowConfirmModal .btn-cancel').off('click');
        function confirm() { cb(true); }
        function deny() { cb(false); }

//        $('body').on('click', '#windowConfirmModal .btn-danger', confirm);
//        $('body').on('click', '#windowConfirmModal .btn', deny);
        $('#windowConfirmModal .btn-ok').on('click',confirm);
        $('#windowConfirmModal .btn-cancel').on('click',deny);

        return true;
      }

      initTemplate()

      if ( bootStrapConfirm() ){
          $('#windowConfirmModal .modal-body p').html(text);
          $('#windowConfirmModal').modal();
      }  else {
          //console.log('bootstrap was not found');
          cb(window._originalConfirm(text));
      }
  }
}(window.jQuery, window);