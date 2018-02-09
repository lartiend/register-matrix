$(document).ready(()=> {
    $('form').on('submit', e => {
        e.preventDefault();
        let child = $('#child').val();
        $.ajax({
            type: "GET",
            dataType: 'json',
            url: '/register?child='+child, // http://127.0.0.1:8000/register?child=12
            success: res => {
                dataProcess(res);
            }
        });
    });
    $('#back').click(()=> {
        $("#childModal").remove();
        $("#parentModal").remove();
        $("#postModal").remove();
    });
    function dataProcess(res) {
        if (res.status=='danger') {
            alert(res.message);
        } else {
            console.log(res);
            $('div#exampleModal').modal('show');
            let child   = '<p id="childModal">Child No.: '  + res.child     + '</p>';
            let parent  = '<p id="parentModal">Parent No.: ' + res.parent    + '</p>';
            let post    = '<p id="postModal">Position: '   + res.position  + '</p>';
            $("#details").append(child, parent, post);
        }
    };
});
