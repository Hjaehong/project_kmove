/**
 * 
 */
ClassicEditor 

    .create( document.querySelector( '#content_id' ) )

    .then( editor => { 

        console.log( editor ); 

    } ) 

    .catch( error => { 

        console.error( error ); 

    } );