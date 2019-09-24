function grid(){
    var gridData = [
        {
            USER_ID: 'a1000',
            NAME: 'kim',
            PHONE_NUMBER: '010-0000-0000',
            BIRTHDAY:'1984/01/01'
        },
        {
            USER_ID: 'a2000',
            NAME: 'park',
            PHONE_NUMBER: '010-1000-0000',
            BIRTHDAY:'1986/01/01'
        },
        {
            USER_ID: 'a3000',
            NAME: 'lim',
            PHONE_NUMBER: '010-2000-0000',
            BIRTHDAY:'1985/01/01'
        },
        {
            USER_ID: 'a4000',
            NAME: 'choi',
            PHONE_NUMBER: '010-3000-0000',
            BIRTHDAY:'1988/01/01'
        },
        {
            USER_ID: 'a5000',
            NAME: 'lee',
            PHONE_NUMBER: '010-4000-0000',
            BIRTHDAY:'1990/01/01'
        }
    ];

    /* Create Basic Grid */
    var grid = new tui.Grid({
        el: $('.grid'),
        scrollX: false,
        scrollY: false
    });

    /* Grid Set Columns */
    grid.setColumns([
        {title: 'UserId',     name: 'USER_ID' , align:'center' },
        {title: 'Name',     name: 'NAME' , align:'center'},
        {title: 'Phone',     name: 'PHONE_NUMBER' , align:'center'},
        {title: 'Birthday',  name: 'BIRTHDAY' , align:'center'}
    ]);

    /* Grid Set Data */
    grid.setData(gridData);    
}
grid();