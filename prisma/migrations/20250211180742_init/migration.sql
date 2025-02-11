-- CreateTable
CREATE TABLE `Web_gallery_master` (
    `id` VARCHAR(50) NOT NULL,
    `school_id` VARCHAR(50) NULL,
    `title` VARCHAR(50) NULL,
    `active` BOOLEAN NULL,
    `date_created` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `index` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `account_master` (
    `id` VARCHAR(50) NOT NULL,
    `collection_id` VARCHAR(50) NULL,
    `expense_id` VARCHAR(50) NULL,
    `school_id` VARCHAR(50) NULL,
    `student_id` VARCHAR(50) NULL,
    `fee_id` VARCHAR(50) NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `active` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `admin_master` (
    `admin_id` VARCHAR(45) NOT NULL,
    `active` BOOLEAN NULL DEFAULT true,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `password` VARCHAR(225) NULL,
    `salt` VARCHAR(225) NULL,
    `email` VARCHAR(45) NULL,
    `org_id` VARCHAR(45) NULL,
    `role` VARCHAR(100) NULL,
    `designation` VARCHAR(100) NULL,
    `fullName` VARCHAR(100) NULL,
    `contactNo` VARCHAR(50) NULL,
    `last_login_time` DATETIME(0) NULL,
    `location` VARCHAR(100) NULL,
    `id` VARCHAR(50) NULL,

    PRIMARY KEY (`admin_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `assignment_master` (
    `assignment_id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `subject_id` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `submission_date` DATETIME(0) NULL,
    `class_id` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `teacher_id` VARCHAR(255) NULL,
    `division_id` VARCHAR(255) NULL,
    `name` VARCHAR(255) NULL,
    `date_created` DATETIME(0) NOT NULL,
    `date_modified` DATETIME(0) NOT NULL,

    PRIMARY KEY (`assignment_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `assignment_submit_master` (
    `assignment_submit_id` VARCHAR(50) NOT NULL,
    `assignment_id` VARCHAR(50) NULL,
    `active` TINYINT NULL,
    `teacher_id` VARCHAR(50) NULL,
    `complete` TINYINT NULL,
    `student_id` VARCHAR(50) NULL,
    `submitted_date` DATE NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`assignment_submit_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `banner_master` (
    `banner_id` VARCHAR(100) NOT NULL,
    `active` BOOLEAN NULL,
    `title` VARCHAR(255) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `index` INTEGER NULL,

    PRIMARY KEY (`banner_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `board_master` (
    `board_id` VARCHAR(255) NOT NULL,
    `boardName` VARCHAR(255) NULL,
    `active` INTEGER NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`board_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `circular_master` (
    `id` VARCHAR(50) NOT NULL,
    `circular_id` VARCHAR(50) NOT NULL,
    `active` TINYINT NULL,
    `title` VARCHAR(255) NULL,
    `description` VARCHAR(255) NULL,
    `date` DATETIME(0) NULL,
    `category` VARCHAR(255) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `school_id` VARCHAR(50) NULL,
    `rescheduleTime` DATETIME(0) NULL,
    `classArr` JSON NULL,
    `type` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `class_division_master` (
    `division_id` VARCHAR(255) NOT NULL,
    `divisionName` VARCHAR(255) NULL,
    `active` TINYINT NULL DEFAULT 1,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `class_id` VARCHAR(50) NULL,

    PRIMARY KEY (`division_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `class_master` (
    `class_id` VARCHAR(255) NOT NULL,
    `className` VARCHAR(255) NULL,
    `active` INTEGER NULL,
    `index` INTEGER NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `school_id` VARCHAR(50) NULL,

    PRIMARY KEY (`class_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `collection_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `collectionName` VARCHAR(255) NULL,
    `totalBudget` FLOAT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `active` TINYINT NULL,
    `index` INTEGER NULL,
    `type` VARCHAR(45) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ebook_master` (
    `id` VARCHAR(50) NOT NULL,
    `ebook_id` VARCHAR(50) NULL,
    `className` VARCHAR(50) NULL,
    `active` TINYINT NULL,
    `title` VARCHAR(500) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `subject` VARCHAR(50) NULL,
    `index` INTEGER NULL,
    `success` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `expense_master` (
    `id` VARCHAR(255) NOT NULL,
    `complianceType` VARCHAR(255) NULL,
    `date` DATE NULL,
    `paidAmount` FLOAT NULL,
    `school_id` VARCHAR(255) NULL,
    `paymentMethod` VARCHAR(255) NULL,
    `remark` VARCHAR(255) NULL,
    `amount` FLOAT NULL,
    `expense_type_id` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `vendorName` VARCHAR(255) NULL,
    `vendorType` VARCHAR(255) NULL,
    `vendorContactNo` VARCHAR(255) NULL,
    `vendorEmail` VARCHAR(255) NULL,
    `vendorAddress` VARCHAR(255) NULL,
    `invoiceNo` VARCHAR(255) NULL,
    `paymentTerm` VARCHAR(255) NULL,
    `gst` VARCHAR(255) NULL,
    `vat` VARCHAR(255) NULL,
    `otherTax` VARCHAR(255) NULL,
    `department` VARCHAR(255) NULL,
    `approvalStatus` VARCHAR(255) NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `gstNo` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `expense_type_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `expenseType` VARCHAR(255) NULL,
    `totalPlanning` FLOAT NULL,
    `active` BOOLEAN NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `fee_installment_master` (
    `fee_id` VARCHAR(50) NULL,
    `fee_installment_id` VARCHAR(50) NOT NULL,
    `totalFee` FLOAT NULL,
    `pendingFee` FLOAT NULL,
    `paidFee` FLOAT NULL,
    `active` TINYINT NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `nextPaymentDate` DATE NULL,
    `paymentMethod` VARCHAR(100) NULL,
    `transactionId` VARCHAR(150) NULL,

    PRIMARY KEY (`fee_installment_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `fee_master` (
    `fee_id` VARCHAR(50) NOT NULL,
    `student_id` VARCHAR(50) NOT NULL,
    `totalFee` FLOAT NOT NULL,
    `pendingFee` FLOAT NOT NULL,
    `paidFee` FLOAT NOT NULL,
    `active` TINYINT NOT NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `school_id` VARCHAR(50) NULL,
    `class_id` VARCHAR(50) NULL,
    `dateOfPayment` DATE NULL,
    `nextPaymentDate` DATE NULL,
    `discountFee` FLOAT NULL DEFAULT 0,
    `lateFee` DOUBLE NULL DEFAULT 0,
    `collection_id` VARCHAR(100) NULL,

    PRIMARY KEY (`fee_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `handwritten_notes_master` (
    `handwritten_id` VARCHAR(50) NOT NULL,
    `teacher_id` VARCHAR(50) NULL,
    `subject_id` VARCHAR(50) NULL,
    `topic_id` VARCHAR(50) NULL,
    `division_id` VARCHAR(50) NULL,
    `chapter_id` VARCHAR(50) NULL,
    `class_id` VARCHAR(50) NULL,
    `active` TINYINT NULL,
    `name` VARCHAR(200) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`handwritten_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `idcard_color_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `color` VARCHAR(255) NULL,
    `type` VARCHAR(255) NULL,
    `template` VARCHAR(255) NULL,
    `active` TINYINT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `notification_master` (
    `notification_id` VARCHAR(255) NOT NULL,
    `title` VARCHAR(255) NULL,
    `message` VARCHAR(1000) NULL,
    `seen` TINYINT NULL,
    `user_id` VARCHAR(255) NULL,
    `type` VARCHAR(200) NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `active` TINYINT NULL,

    PRIMARY KEY (`notification_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `period_master` (
    `period_id` VARCHAR(50) NOT NULL,
    `period` VARCHAR(50) NULL,
    `startTime` VARCHAR(50) NULL,
    `endTime` VARCHAR(50) NULL,
    `school_id` VARCHAR(50) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `active` TINYINT NULL,

    PRIMARY KEY (`period_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `quotes_master` (
    `quotes_id` VARCHAR(100) NOT NULL,
    `quotes` VARCHAR(250) NULL,
    `active` INTEGER NULL DEFAULT 1,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `index` INTEGER NULL,
    `author` VARCHAR(100) NULL,

    PRIMARY KEY (`quotes_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `result_master` (
    `result_id` VARCHAR(50) NOT NULL,
    `test_id` VARCHAR(50) NOT NULL,
    `class_id` VARCHAR(50) NULL,
    `active` BOOLEAN NULL,
    `division_id` VARCHAR(50) NULL,
    `subject_id` VARCHAR(50) NULL,
    `student_id` VARCHAR(50) NULL,
    `obtainedMarks` FLOAT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`result_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `school_admin_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_admin_id` VARCHAR(255) NULL,
    `role` VARCHAR(255) NULL,
    `fullName` VARCHAR(255) NULL,
    `password` VARCHAR(255) NULL,
    `salt` VARCHAR(255) NULL,
    `email` VARCHAR(255) NULL,
    `org_id` VARCHAR(255) NULL,
    `designation` VARCHAR(255) NULL,
    `contactNo` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `last_login_time` DATETIME(0) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `school_class_master` (
    `school_class_id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `active` TINYINT NULL,
    `class_id` VARCHAR(255) NULL,
    `division_ids` VARCHAR(255) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`school_class_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `school_master` (
    `id` VARCHAR(100) NOT NULL,
    `school_id` VARCHAR(100) NULL,
    `email` VARCHAR(100) NULL,
    `schoolName` VARCHAR(100) NULL,
    `active` INTEGER NULL,
    `address` TEXT NULL,
    `tagline` TEXT NULL,
    `contactNo` TEXT NULL,
    `locationUrl` TEXT NULL,
    `ownerName` TEXT NULL,
    `schoolBoard` VARCHAR(100) NULL,
    `password` VARCHAR(100) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `salt` VARCHAR(50) NULL,
    `last_login_time` DATETIME(0) NULL,
    `startDate` DATE NULL,
    `endDate` DATE NULL,
    `websiteURL` VARCHAR(500) NULL,
    `websiteName` VARCHAR(150) NULL,
    `medium` VARCHAR(100) NULL,
    `udiseNo` VARCHAR(100) NULL,
    `centerCodeNo` VARCHAR(100) NULL,
    `schoolRegNo` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `school_subscription_master` (
    `school_subscription_id` VARCHAR(50) NOT NULL,
    `school_id` VARCHAR(50) NULL,
    `active` TINYINT NULL,
    `subscription_id` VARCHAR(50) NULL,
    `startDate` DATE NULL,
    `endDate` DATE NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`school_subscription_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `student_attendance_master` (
    `student_attendace_id` VARCHAR(50) NOT NULL,
    `attendance` BOOLEAN NULL,
    `date` DATE NULL DEFAULT (curdate()),
    `class_id` VARCHAR(50) NULL,
    `division_id` VARCHAR(50) NULL,
    `active` BOOLEAN NULL,
    `student_id` VARCHAR(50) NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `teacher_id` VARCHAR(50) NULL,

    PRIMARY KEY (`student_attendace_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `student_documents_master` (
    `student_document_id` VARCHAR(50) NOT NULL,
    `user_id` VARCHAR(50) NULL,
    `transferCertificate` VARCHAR(50) NULL,
    `aadharCard` TINYINT NULL,
    `panCard` TINYINT NULL,
    `reportCard` TINYINT NULL,
    `bankPassbook` TINYINT NULL,
    `healthInsurance` TINYINT NULL,
    `medicalRecord` TINYINT NULL,
    `birthCertificate` TINYINT NULL,
    `parentsGuardianId` TINYINT NULL,
    `addressProof` TINYINT NULL,
    `previousSchoolLeavingCertificate` TINYINT NULL,
    `previousSchoolMarksheet` TINYINT NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`student_document_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `student_master` (
    `id` VARCHAR(50) NOT NULL,
    `student_id` VARCHAR(50) NULL,
    `fullName` VARCHAR(50) NULL,
    `active` INTEGER NULL,
    `placeOfBirth` VARCHAR(255) NULL,
    `nationality` VARCHAR(50) NULL,
    `school_id` VARCHAR(50) NULL,
    `class_id` VARCHAR(50) NULL,
    `division_id` VARCHAR(50) NULL,
    `religion` VARCHAR(50) NULL,
    `contactNo` VARCHAR(50) NULL,
    `dob` DATE NULL,
    `user_id` VARCHAR(50) NULL,
    `gender` VARCHAR(50) NULL,
    `pincode` VARCHAR(50) NULL,
    `city` VARCHAR(100) NULL,
    `state` VARCHAR(100) NULL,
    `home` VARCHAR(255) NULL,
    `emergencyContactNo` VARCHAR(50) NULL,
    `fatherName` VARCHAR(100) NULL,
    `fatherOccupation` VARCHAR(100) NULL,
    `motherName` VARCHAR(100) NULL,
    `guardianName` VARCHAR(100) NULL,
    `guardianContactNo` VARCHAR(50) NULL,
    `previousSchool` VARCHAR(255) NULL,
    `schoolAddress` VARCHAR(255) NULL,
    `schoolContactNo` VARCHAR(100) NULL,
    `grade` VARCHAR(100) NULL,
    `modeOfTransportation` VARCHAR(100) NULL,
    `transportRoute` VARCHAR(200) NULL,
    `medicalCondition` VARCHAR(100) NULL,
    `allergies` VARCHAR(255) NULL,
    `familyDoctorContactNo` VARCHAR(50) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `password` VARCHAR(200) NULL,
    `salt` VARCHAR(200) NULL,
    `email` VARCHAR(50) NULL,
    `last_login_time` DATETIME(0) NULL,
    `rollNo` VARCHAR(10) NULL,
    `category` VARCHAR(50) NULL,
    `admissionNo` VARCHAR(50) NULL,
    `weight` FLOAT NULL,
    `height` FLOAT NULL,
    `bloodGroup` VARCHAR(50) NULL,
    `motherTongue` VARCHAR(50) NULL,
    `motherOccupation` VARCHAR(50) NULL,
    `guardianRelation` VARCHAR(50) NULL,
    `dietaryRequirements` VARCHAR(50) NULL,
    `className` VARCHAR(20) NULL,
    `divisionName` VARCHAR(20) NULL,
    `subCast` VARCHAR(50) NULL,
    `admissionDate` DATE NULL,
    `generalRegNo` VARCHAR(100) NULL,
    `aadharNo` VARCHAR(20) NULL,
    `apaarIdNo` VARCHAR(100) NULL,
    `admissionType` VARCHAR(100) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `subject_master` (
    `id` VARCHAR(50) NOT NULL,
    `subjectName` VARCHAR(100) NULL,
    `active` TINYINT NULL,
    `subject_id` VARCHAR(50) NULL,
    `class_id` VARCHAR(50) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `subscription_master` (
    `subscription_id` VARCHAR(50) NOT NULL,
    `type` VARCHAR(50) NULL,
    `active` INTEGER NULL,
    `days` INTEGER NULL,
    `name` VARCHAR(100) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`subscription_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teacher_documents_master` (
    `teacher_document_id` VARCHAR(50) NOT NULL,
    `user_id` VARCHAR(50) NULL,
    `teachingCertificate` TINYINT NULL,
    `aadharCard` TINYINT NULL,
    `panCard` TINYINT NULL,
    `voterIdCard` TINYINT NULL,
    `resume` TINYINT NULL,
    `bankPassbook` TINYINT NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`teacher_document_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teacher_master` (
    `teacher_id` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `fullName` VARCHAR(255) NULL,
    `password` VARCHAR(255) NULL,
    `salt` VARCHAR(255) NULL,
    `gender` VARCHAR(50) NULL,
    `school_id` VARCHAR(255) NULL,
    `dob` VARCHAR(50) NULL,
    `contactNo` VARCHAR(50) NULL,
    `emergencyContactNo` VARCHAR(50) NULL,
    `bloodGroup` VARCHAR(50) NULL,
    `higherEducation` VARCHAR(255) NULL,
    `totalExperience` VARCHAR(255) NULL,
    `experties` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `user_id` VARCHAR(50) NULL,
    `last_login_time` DATETIME(0) NULL,
    `idNumber` VARCHAR(50) NULL,
    `address` VARCHAR(150) NULL,
    `className` VARCHAR(100) NULL,
    `divisionName` VARCHAR(100) NULL,
    `teacherType` VARCHAR(100) NULL,

    PRIMARY KEY (`teacher_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `teacher_time_table_master` (
    `teacher_time_table_id` VARCHAR(255) NOT NULL,
    `period_id` VARCHAR(255) NULL,
    `teacher_id` VARCHAR(255) NULL,
    `subject_id` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `class_id` VARCHAR(255) NULL,
    `division_id` VARCHAR(255) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `days` JSON NULL,

    PRIMARY KEY (`teacher_time_table_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `test_master` (
    `test_id` VARCHAR(50) NOT NULL,
    `class_id` VARCHAR(50) NULL,
    `active` BOOLEAN NULL,
    `division_id` VARCHAR(50) NULL,
    `testName` VARCHAR(100) NULL,
    `teacher_id` VARCHAR(50) NULL,
    `testDate` DATE NULL,
    `subject_id` VARCHAR(50) NULL,
    `totalMarks` FLOAT NULL,
    `minMarks` FLOAT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`test_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `time_table_master` (
    `time_table_id` VARCHAR(50) NOT NULL,
    `period_id` VARCHAR(50) NULL,
    `day` VARCHAR(20) NULL,
    `class_id` VARCHAR(50) NULL,
    `school_id` VARCHAR(50) NULL,
    `active` TINYINT NULL,
    `division_id` VARCHAR(50) NULL,
    `teacher_id` VARCHAR(50) NULL,
    `subject_id` VARCHAR(50) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`time_table_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_master` (
    `id` VARCHAR(50) NOT NULL,
    `userType` VARCHAR(50) NULL,
    `active` INTEGER NULL,
    `school_id` VARCHAR(50) NULL,
    `email` VARCHAR(50) NULL,
    `contactNo` VARCHAR(20) NULL,
    `date_created` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` TIMESTAMP(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `password` VARCHAR(200) NULL,
    `salt` VARCHAR(200) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_contact_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `fullName` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `phone` VARCHAR(255) NULL,
    `address` VARCHAR(255) NULL,
    `email` VARCHAR(255) NULL,
    `message` VARCHAR(3000) NULL,
    `selectClasses` JSON NULL,
    `date_created` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `city` VARCHAR(255) NULL,
    `region` VARCHAR(255) NULL,
    `country` VARCHAR(50) NULL,
    `location` JSON NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_footer_master` (
    `id` VARCHAR(50) NOT NULL,
    `school_id` VARCHAR(50) NULL,
    `schoolAddress` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `contactNo` VARCHAR(25) NULL,
    `email` VARCHAR(55) NULL,
    `facebookLink` VARCHAR(255) NULL,
    `instagramLink` VARCHAR(255) NULL,
    `linkedInLink` VARCHAR(255) NULL,
    `twitterLink` VARCHAR(255) NULL,
    `date_created` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_hero_section` (
    `id` VARCHAR(50) NOT NULL,
    `school_id` VARCHAR(50) NULL,
    `schoolName` VARCHAR(100) NULL,
    `slogan` VARCHAR(1000) NULL,
    `staffCount` INTEGER NULL,
    `studentCount` INTEGER NULL,
    `active` TINYINT NULL,
    `serviceSection` JSON NULL,
    `missionTitle` VARCHAR(255) NULL,
    `missionDescription` VARCHAR(500) NULL,
    `visionTitle` VARCHAR(255) NULL,
    `visionDescription` VARCHAR(1000) NULL,
    `schoolBoard` VARCHAR(100) NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `websiteName` VARCHAR(150) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_news_section_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `newsTitle` VARCHAR(255) NULL,
    `newsInformation` VARCHAR(255) NULL,
    `newsDate` DATE NULL,
    `active` TINYINT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `index` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_review_section_master` (
    `id` VARCHAR(50) NOT NULL,
    `school_id` VARCHAR(50) NULL,
    `reviewerName` VARCHAR(50) NULL,
    `reviewerRole` VARCHAR(50) NULL,
    `reviewerRating` TINYINT NULL,
    `reviewerReview` VARCHAR(255) NULL,
    `active` TINYINT NULL,
    `date_created` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
    `index` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `web_team_master` (
    `id` VARCHAR(255) NOT NULL,
    `school_id` VARCHAR(255) NULL,
    `fullName` VARCHAR(255) NULL,
    `active` BOOLEAN NULL,
    `designation` VARCHAR(255) NULL,
    `title` VARCHAR(255) NULL,
    `message` VARCHAR(255) NULL,
    `date_created` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `date_modified` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `type` VARCHAR(20) NULL,
    `index` TINYINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
