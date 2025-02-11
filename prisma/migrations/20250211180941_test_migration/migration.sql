-- CreateTable
CREATE TABLE `test_new` (
    `id` VARCHAR(50) NOT NULL,
    `class_id` VARCHAR(50) NULL,
    `active` BOOLEAN NULL,
    `division_id` VARCHAR(50) NULL,
    `testName` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
