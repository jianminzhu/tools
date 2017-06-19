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
		<StartupConfig>
			<SelfTest>OnLoad</SelfTest>
		</StartupConfig>
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
	</Runtime>
	<Signature URI="#ccme_base" Algorithm="FIPS140_INTEGRITY">MCwCFD3RiKObyemWaxcgFb3oCht1t6dHAhR2IGo6UN5r2YzJEfsw4GeWINYdIw==</Signature>
	<Signature URI="#ccme_base_non_fips" Algorithm="FIPS140_INTEGRITY">MCwCFHGPwu1ep5829YMFJz1qEh5xCL9AAhREW7WiOPEW+WYyLINFzfANYWRd7g==</Signature>
	<Signature URI="#ccme_asym" Algorithm="FIPS140_INTEGRITY">MCwCFF/5qMMVIceUjx1G/AfQZ+hKOXLlAhRg+wjtnAb4t/p9He2qye35j18AnQ==</Signature>
	<Signature URI="#ccme_ecc" Algorithm="FIPS140_INTEGRITY">MCwCFA9zDPMI0cosFW56y5pMUk6hvHNdAhRaeV1uA6aW7nIesESyl9f9mbQRxg==</Signature>
	<Signature URI="#ccme_ecc_non_fips" Algorithm="FIPS140_INTEGRITY">MC4CFQCGIse5euRuuykS0s2/Bha1TibxEwIVAL+WdB5OXdlYq+n9wyrldrBUeioF</Signature>
	<Signature URI="#ccme_ecdrbg" Algorithm="FIPS140_INTEGRITY">MC0CFQC6adrzNU3u/pXEbSstJrgSBMmokQIUDNEh/aBUYKfW1w/FfLVr8iXKbSk=</Signature>
	<Signature URI="#ccme_ecc_accel_fips" Algorithm="FIPS140_INTEGRITY">MC4CFQCt84w451F9n2IKvErnlLnIWiczUQIVAMaLQ/v2m48IeNQf0awMEacFueLN</Signature>
	<Signature URI="#ccme_ecc_accel_non_fips" Algorithm="FIPS140_INTEGRITY">MC4CFQC4cPCLp4EKNQLOcWa9NqjVrPJfWAIVAIWvsjpKidmLwgenjo+kQYoKJNpD</Signature>
	<Signature URI="#ccme_error_info" Algorithm="FIPS140_INTEGRITY">MC0CFBGCshkY588HpfYinDNh0ORlcjhJAhUAlVpn/n9vQh1KPJYt94Li5v2uqI8=</Signature>
	<Signature URI="#master" Algorithm="FIPS140_INTEGRITY">MC0CFGLMPDkTY49QUAmxZelKBTxq57PdAhUAt97t4WUqpngVP+txZ9cZhlRHVnQ=</Signature>
	<Signature URI="#Crypto-C ME" Algorithm="FIPS140_INTEGRITY">MC4CFQCr/u4ZkVHRc6jyhaTFFEJ5BQ7uJwIVAMNUrWq4k4E0sn0Cwzgl0oEFaWOr</Signature>
	<Signature URI="#runtime" Algorithm="FIPS140_INTEGRITY">MC0CFDelmNtf12tNln49QeZcZYSQpLMoAhUAtnKVQ/ejfdCk9EXk5CCFzUxW9zE=</Signature>
</Configuration>

