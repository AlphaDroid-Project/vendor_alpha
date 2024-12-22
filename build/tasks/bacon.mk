# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2024 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# AlphaDroid OTA update package

ALPHA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ALPHA_VERSION).zip

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

$(ALPHA_TARGET_PACKAGE): $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ALPHA_TARGET_PACKAGE)
	$(hide) $(SHA256) $(ALPHA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ALPHA_TARGET_PACKAGE).sha256sum
	@echo '' >&2
	@echo '_______ ______         ______          ________                _____ _________ ' >&2
	@echo '___    |___  /________ ___  /_ ______ ____  __ \______________ ___(_)______  / ' >&2
	@echo '__  /| |__  / ___  __ \__  __ \_  __ `/__  / / /__  ___/_  __ \__  / _  __  /  ' >&2
	@echo '_  ___ |_  /  __  /_/ /_  / / // /_/ / _  /_/ / _  /    / /_/ /_  /  / /_/ /   ' >&2
	@echo '/_/  |_|/_/   _  .___/ /_/ /_/ \__,_/  /_____/  /_/     \____/ /_/   \__,_/    ' >&2
	@echo '              /_/                                                              ' >&2
	@echo '' >&2
	@echo '' >&2
	@echo "Package Complete: $(ALPHA_TARGET_PACKAGE)" >&2

.PHONY: bacon
bacon: $(ALPHA_TARGET_PACKAGE) $(DEFAULT_GOAL)
