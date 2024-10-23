import * as Core from '@ckeditor/ckeditor5-core';
import * as UI from '@ckeditor/ckeditor5-ui';

export class Timestamp2 extends Core.Plugin {
    static pluginName = 'Timestamp2';

    init() {
        console.log('timestamp2');
        const editor = this.editor;

        // The button must be registered among the UI components of the editor
        // to be displayed in the toolbar.
        editor.ui.componentFactory.add(Timestamp2.pluginName, () => {
            // The button will be an instance of ButtonView.
            const button = new UI.ButtonView();

            button.set( {
                label: 'Timestamp2',
                withText: true
            } );

            //Execute a callback function when the button is clicked
            button.on('execute', () => {
                const now = new Date();

                //Change the model using the model writer
                editor.model.change(writer => {

                    //Insert the text at the user's current position
                    editor.model.insertContent(writer.createText( now.toString()));
                });
            });

            return button;
        });
    }
}
