<?php
/**
 * @file
  * Enables modules and site configuration for a standard site
  installation.
   */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
  *
   * Allows the profile to alter the site configuration form.
    */
function zee_essentials_form_install_configure_form_alter(&$form,
  $form_state) {
      // Pre-populate the site name with the server name.
      $form['site_information']['site_name']['#default_value'] =
        'Zee Essentials';
  }
function zee_essentials_js_alter(&$javascript){
 unset($javascript['sites/all/modules/panels/js/panels.js']);
}
