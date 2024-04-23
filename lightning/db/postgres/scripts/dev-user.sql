INSERT INTO ORGANISATION (
    ID,
    ADDRESS,
    CASE_INSENSITIVE_NAME,
    COUNTRY_CODE,
    EMAIL,
    MOBILE_NUMBER,
    NAME,
    ORGANISATION_ID,
    PHONE_NUMBER,
    POST_CODE,
    SLUG,
) VALUES (
    23,
    'address',
    'Account',
    '61',
    'dev@account.com',
    '0000 000 000',
    'Account',
    '1d0c220d',
    '03 0000 0000',
    '3000',
    'ZET'
);


INSERT INTO ORGANISATION_STATUS (
    ID, CHANGED_AT, REASON, STATUS, FK_ORGANISATION_ID
) VALUES (
    27, '2022-11-23 12:06:40.907', 'activated by default', 'ACTIVE', 23
);

INSERT INTO LIGHTNING_USER (
    EMAIL,
    CREATED_AT,
    IS_LDAP,
    LEVEL,
    NAME,
    PASSWORD,
    FK_ORGANISATION_ID
) VALUES (
    'DEV@ACCOUNT.COM',
    '2022-11-23 12:07:37.719',
    false,
    'ADMIN',
    'ADMIN',
    '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', -- password
    23
);

INSERT INTO LIGHTNING_ROLE (
    ID,
    NAME,
    DESCRIPTION,
    CREATED_AT,
    CREATED_BY,
    IS_LDAP,
    FK_ORGANISATION_ID
) VALUES (
    25,
    'DEV_ROLE',
    'role for dev test',
    '2022-11-23 12:05:37.719',
    'DEV@ACCOUNT.COM',
    false,
    23
);
