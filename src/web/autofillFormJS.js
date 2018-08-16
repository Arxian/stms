$(function () {
                            var autoTrig = $("#autofillTrigger");
                            var def = $("#default");
                            var custom = $("#custom");
                            var type = $("#type");
                            var customSection = $("#customSection");
                            var wholeAutofillForm = $("#wholeAutofillForm");

                            wholeAutofillForm.hide();

                            autoTrig.change(function () {
                                if (autoTrig.is(':checked')) {
                                    def.show();
                                    custom.show();
                                } else {
                                    wholeAutofillForm.hide();
                                }
                            });

                            def.change(function () {
                                if (def.is(':checked')) {
                                    type.show();
                                    customSection.hide();
                                } else {
                                    type.hide();
                                }
                            });

                            custom.change(function () {
                                if (custom.is(':checked')) {
                                    customSection.show();
                                    type.hide();
                                } else {
                                    customSection.hide();
                                }
                            });
                        });