import {
  JupyterFrontEnd, JupyterFrontEndPlugin
} from '@jupyterlab/application';


/**
 * Initialization data for the test_ext extension.
 */
const extension: JupyterFrontEndPlugin<void> = {
  id: 'test_ext',
  autoStart: true,
  activate: (app: JupyterFrontEnd) => {
    console.log('JupyterLab extension test_ext is activated!');
  }
};

export default extension;
