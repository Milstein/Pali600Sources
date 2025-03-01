// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.kep.cemetery.web;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.servlet.http.HttpServletRequest;
import org.joda.time.format.DateTimeFormat;
import org.kep.cemetery.domain.ChurchMaintenance;
import org.kep.cemetery.domain.Gender;
import org.kep.cemetery.domain.Munificence;
import org.kep.cemetery.domain.Person;
import org.kep.cemetery.domain.PhoneNumber;
import org.kep.cemetery.web.PersonController;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect PersonController_Roo_Controller {
    
    void PersonController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("person_birthdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void PersonController.populateEditForm(Model uiModel, Person person) {
        uiModel.addAttribute("person", person);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("churchmaintenances", ChurchMaintenance.findAllChurchMaintenances());
        uiModel.addAttribute("genders", Arrays.asList(Gender.values()));
        uiModel.addAttribute("munificences", Munificence.findAllMunificences());
        uiModel.addAttribute("phonenumbers", PhoneNumber.findAllPhoneNumbers());
    }
    
    String PersonController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
