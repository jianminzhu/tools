<?rsa version="1.0" encoding="utf-8"?>
<Configuration>
	<Product Id="Crypto-C ME">
		<Version>4.0.0.0</Version>
		<ReleaseDate>Jul 01 2011 11:49:55</ReleaseDate>
		<ExpDate>""</ExpDate>
		<Copyright>
			Copyright (C) RSA
		</Copyright>
		<Library Id="master">cryptocme</Library>
	</Product>
	<Runtime Id="runtime">
		<LoadOrder>
			<Library Id="ccme_base">ccme_base</Library>
			<Library Id="ccme_base_non_fips">ccme_base_non_fips</Library>
			<Library Id="ccme_asym">ccme_asym</Library>
			<Library Id="ccme_ecc">ccme_ecc</Library>
			<Library Id="ccme_ecc_non_fips">ccme_ecc_non_fips</Library>
			<Library Id="ccme_ecdrbg">ccme_ecdrbg</Library>
			<Library Id="ccme_ecc_accel_fips">ccme_ecc_accel_fips</Library>
			<Library Id="ccme_ecc_accel_non_fips">ccme_ecc_accel_non_fips</Library>
			<Library Id="ccme_error_info">ccme_error_info</Library>
		</LoadOrder>
		<StartupConfig>
			<SelfTest>OnUse</SelfTest>
		</StartupConfig>
	</Runtime>
	<Signature URI="#ccme_base" Algorithm="FIPS140_INTEGRITY">MCwCFCg5oPv6GR+KD3Xar36ncpQskJrxAhQcIveWWx93yV4dJ7f9eI9BlhYzgg==</Signature>
	<Signature URI="#ccme_base_non_fips" Algorithm="FIPS140_INTEGRITY">MC4CFQCoiHYCxISSgrit7xOB2bEMU7NuGwIVAI53L2lLYZ+cmFekGLsT6oc8TFKe</Signature>
	<Signature URI="#ccme_asym" Algorithm="FIPS140_INTEGRITY">MC0CFQCWA3FL5wf73o8+HRTOmiXP6cc14gIUW9gtzu1xCkMDWPr3Kn2RNTb1fVA=</Signature>
	<Signature URI="#ccme_ecc" Algorithm="FIPS140_INTEGRITY">MC4CFQCJGIveFcclfgDqFMQ2OGb6vbEOpAIVAJqpMKZbO8UzesHs9p0Hex92J5s+</Signature>
	<Signature URI="#ccme_ecc_non_fips" Algorithm="FIPS140_INTEGRITY">MCwCFHIN6HJ1Mm4CDJWIviOPWM9pbPjXAhQY+5drXgubAQxyNJVXI4nXv9/7dQ==</Signature>
	<Signature URI="#ccme_ecdrbg" Algorithm="FIPS140_INTEGRITY">MC0CFQCMC5tId9fzFvfzcwHdlbCwTMHqewIUGFMesrM2IeEo/7zUAeb4KLfOVpY=</Signature>
	<Signature URI="#ccme_ecc_accel_fips" Algorithm="FIPS140_INTEGRITY">MC4CFQCIN7IAu1sfgXkZZjOFdxwrtuks2QIVAIFnBky1nUG1mDaewIIMjdr/wD8c</Signature>
	<Signature URI="#ccme_ecc_accel_non_fips" Algorithm="FIPS140_INTEGRITY">MCwCFFnOqLets4ydW5Ir0WCuJkzqc0T8AhQkuWtIdc6STKWZbWSfORyaS8RiXw==</Signature>
	<Signature URI="#ccme_error_info" Algorithm="FIPS140_INTEGRITY">MC0CFCoLvH5N5qH6W9ikt7ISy/emnsj/AhUAnwEmL7jei5TZyqfB86Lo9c0QzBM=</Signature>
	<Signature URI="#master" Algorithm="FIPS140_INTEGRITY">MCwCFCAFd7987qQ6I3nbIgUrkvaPtPsEAhQfPp80uIEzirpfM/OWPyYZxAoYPQ==</Signature>
	<Signature URI="#Crypto-C ME" Algorithm="FIPS140_INTEGRITY">MC0CFQCJ96Y/aT06YunA6ufoxClbhQ04JQIUdIxdQfrBg8Ng6rSvQmocf7EjpIk=</Signature>
	<Signature URI="#runtime" Algorithm="FIPS140_INTEGRITY">MC4CFQCaGnl3vvXsM3Xn0xo894QQzBI9TAIVAMF8opZAwarRXW2ze25WgKm2kdI4</Signature>
</Configuration>

