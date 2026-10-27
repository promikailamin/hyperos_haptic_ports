.class public final Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final blacklist ACCESS_INFORMATION_DISCARDED:I = 0x78

.field public static final whitelist ALREADY_DIALING:I = 0x48

.field public static final whitelist ANSWERED_ELSEWHERE:I = 0x34

.field public static final blacklist BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0x6e

.field public static final blacklist BEARER_CAPABILITY_UNAVAILABLE:I = 0x53

.field public static final blacklist BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x55

.field public static final whitelist BUSY:I = 0x4

.field public static final whitelist CALLING_DISABLED:I = 0x4a

.field public static final whitelist CALL_BARRED:I = 0x14

.field public static final blacklist CALL_FAIL_DESTINATION_OUT_OF_ORDER:I = 0x6d

.field public static final blacklist CALL_FAIL_NO_ANSWER_FROM_USER:I = 0x6c

.field public static final blacklist CALL_FAIL_NO_USER_RESPONDING:I = 0x6b

.field public static final whitelist CALL_PULLED:I = 0x33

.field public static final blacklist CALL_REJECTED:I = 0x70

.field public static final whitelist CANT_CALL_WHILE_RINGING:I = 0x49

.field public static final whitelist CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final whitelist CDMA_ACCESS_FAILURE:I = 0x20

.field public static final whitelist CDMA_ALREADY_ACTIVATED:I = 0x31

.field public static final greylist-max-o CDMA_CALL_LOST:I = 0x29

.field public static final whitelist CDMA_DROP:I = 0x1b

.field public static final whitelist CDMA_INTERCEPT:I = 0x1c

.field public static final whitelist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final whitelist CDMA_NOT_EMERGENCY:I = 0x22

.field public static final whitelist CDMA_PREEMPTED:I = 0x21

.field public static final whitelist CDMA_REORDER:I = 0x1d

.field public static final whitelist CDMA_RETRY_ORDER:I = 0x1f

.field public static final whitelist CDMA_SO_REJECT:I = 0x1e

.field public static final blacklist CHANNEL_UNACCEPTABLE:I = 0x6f

.field public static final blacklist CONCURRENT_CALLS_NOT_POSSIBLE:I = 0x7f

.field public static final blacklist CONDITIONAL_IE_ERROR:I = 0x62

.field public static final whitelist CONGESTION:I = 0x5

.field public static final whitelist CS_RESTRICTED:I = 0x16

.field public static final whitelist CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final whitelist CS_RESTRICTED_NORMAL:I = 0x17

.field public static final whitelist DATA_DISABLED:I = 0x36

.field public static final whitelist DATA_LIMIT_REACHED:I = 0x37

.field public static final whitelist DIALED_CALL_FORWARDING_WHILE_ROAMING:I = 0x39

.field public static final whitelist DIALED_MMI:I = 0x27

.field public static final whitelist DIAL_LOW_BATTERY:I = 0x3e

.field public static final whitelist DIAL_MODIFIED_TO_DIAL:I = 0x30

.field public static final whitelist DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0x42

.field public static final whitelist DIAL_MODIFIED_TO_SS:I = 0x2f

.field public static final whitelist DIAL_MODIFIED_TO_USSD:I = 0x2e

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0x45

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0x46

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_SS:I = 0x43

.field public static final whitelist DIAL_VIDEO_MODIFIED_TO_USSD:I = 0x44

.field public static final whitelist EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x4e

.field public static final greylist-max-o EMERGENCY_ONLY:I = 0x25

.field public static final whitelist EMERGENCY_PERM_FAILURE:I = 0x40

.field public static final whitelist EMERGENCY_TEMP_FAILURE:I = 0x3f

.field public static final whitelist ERROR_UNSPECIFIED:I = 0x24

.field public static final greylist-max-o EXITED_ECM:I = 0x2a

.field public static final blacklist FACILITY_REJECTED:I = 0x73

.field public static final whitelist FDN_BLOCKED:I = 0x15

.field public static final blacklist HO_NOT_FEASIBLE:I = 0x7d

.field public static final whitelist ICC_ERROR:I = 0x13

.field public static final whitelist IMEI_NOT_ACCEPTED:I = 0x3a

.field public static final whitelist IMS_ACCESS_BLOCKED:I = 0x3c

.field public static final whitelist IMS_MERGED_SUCCESSFULLY:I = 0x2d

.field public static final whitelist IMS_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x47

.field public static final whitelist INCOMING_AUTO_REJECTED:I = 0x51

.field public static final blacklist INCOMING_CALLS_BARRED_WITHIN_CUG:I = 0x52

.field public static final whitelist INCOMING_MISSED:I = 0x1

.field public static final whitelist INCOMING_REJECTED:I = 0x10

.field public static final blacklist INCOMPATIBLE_DESTINATION:I = 0x5b

.field public static final blacklist INFORMATION_ELEMENT_NON_EXISTENT:I = 0x61

.field public static final blacklist INTERWORKING_UNSPECIFIED:I = 0x66

.field public static final whitelist INVALID_CREDENTIALS:I = 0xa

.field public static final blacklist INVALID_MANDATORY_INFORMATION:I = 0x5e

.field public static final whitelist INVALID_NUMBER:I = 0x7

.field public static final blacklist INVALID_TRANSACTION_IDENTIFIER:I = 0x59

.field public static final blacklist INVALID_TRANSIT_NW_SELECTION:I = 0x5c

.field public static final whitelist LIMIT_EXCEEDED:I = 0xf

.field public static final whitelist LOCAL:I = 0x3

.field public static final blacklist LOCAL_LOW_BATTERY:I = 0x67

.field public static final whitelist LOST_SIGNAL:I = 0xe

.field public static final whitelist LOW_BATTERY:I = 0x3d

.field public static final whitelist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x35

.field public static final blacklist MAXIMUM_VALID_VALUE:I = 0x80

.field public static final whitelist MEDIA_TIMEOUT:I = 0x4d

.field public static final blacklist MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x63

.field public static final blacklist MESSAGE_TYPE_NON_IMPLEMENTED:I = 0x5f

.field public static final blacklist MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x60

.field public static final blacklist MINIMUM_VALID_VALUE:I = 0x0

.field public static final whitelist MMI:I = 0x6

.field public static final blacklist NETWORK_OUT_OF_ORDER:I = 0x75

.field public static final blacklist NON_SELECTED_USER_CLEARING:I = 0x7e

.field public static final whitelist NORMAL:I = 0x2

.field public static final whitelist NORMAL_UNSPECIFIED:I = 0x41

.field public static final whitelist NOT_DISCONNECTED:I = 0x0

.field public static final whitelist NOT_VALID:I = -0x1

.field public static final blacklist NO_CIRCUIT_AVAIL:I = 0x68

.field public static final whitelist NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final blacklist NO_ROUTE_TO_DESTINATION:I = 0x69

.field public static final blacklist NUMBER_CHANGED:I = 0x71

.field public static final whitelist NUMBER_UNREACHABLE:I = 0x8

.field public static final blacklist ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE:I = 0x57

.field public static final blacklist OPERATOR_DETERMINED_BARRING:I = 0x6a

.field public static final whitelist OTASP_PROVISIONING_IN_PROCESS:I = 0x4c

.field public static final whitelist OUTGOING_CANCELED:I = 0x2c

.field public static final whitelist OUTGOING_EMERGENCY_CALL_PLACED:I = 0x50

.field public static final whitelist OUTGOING_FAILURE:I = 0x2b

.field public static final whitelist OUT_OF_NETWORK:I = 0xb

.field public static final whitelist OUT_OF_SERVICE:I = 0x12

.field public static final whitelist POWER_OFF:I = 0x11

.field public static final blacklist PREEMPTION:I = 0x72

.field public static final blacklist PROTOCOL_ERROR_UNSPECIFIED:I = 0x65

.field public static final blacklist QOS_UNAVAILABLE:I = 0x7b

.field public static final blacklist RECOVERY_ON_TIMER_EXPIRED:I = 0x64

.field public static final blacklist REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE:I = 0x79

.field public static final blacklist REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x56

.field public static final blacklist REQUESTED_FACILITY_NOT_SUBSCRIBED:I = 0x7c

.field public static final blacklist RESOURCES_UNAVAILABLE_OR_UNSPECIFIED:I = 0x7a

.field public static final blacklist RESP_TO_STATUS_ENQUIRY:I = 0x74

.field public static final blacklist SECURE_MODE:I = 0x80

.field public static final blacklist SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5d

.field public static final whitelist SERVER_ERROR:I = 0xc

.field public static final whitelist SERVER_UNREACHABLE:I = 0x9

.field public static final blacklist SERVICE_OPTION_NOT_AVAILABLE:I = 0x54

.field public static final blacklist SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x58

.field public static final blacklist SWITCHING_EQUIPMENT_CONGESTION:I = 0x77

.field public static final blacklist TEMPORARY_FAILURE:I = 0x76

.field public static final whitelist TIMED_OUT:I = 0xd

.field public static final whitelist TOO_MANY_ONGOING_CALLS:I = 0x4b

.field public static final whitelist UNOBTAINABLE_NUMBER:I = 0x19

.field public static final blacklist USER_NOT_MEMBER_OF_CUG:I = 0x5a

.field public static final whitelist VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED:I = 0x32

.field public static final whitelist VOICEMAIL_NUMBER_MISSING:I = 0x28

.field public static final whitelist WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x4f

.field public static final whitelist WIFI_LOST:I = 0x3b


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    return-void
.end method

.method public static greylist toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "cause"    # I

    .line 501
    packed-switch p0, :pswitch_data_194

    .line 757
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 755
    :pswitch_17
    const-string v0, "SECURE_MODE"

    return-object v0

    .line 753
    :pswitch_1a
    const-string v0, "CONCURRENT_CALLS_NOT_POSSIBLE"

    return-object v0

    .line 751
    :pswitch_1d
    const-string v0, "NON_SELECTED_USER_CLEARING"

    return-object v0

    .line 749
    :pswitch_20
    const-string v0, "HO_NOT_FEASIBLE"

    return-object v0

    .line 703
    :pswitch_23
    const-string v0, "REQUESTED_FACILITY_NOT_SUBSCRIBED"

    return-object v0

    .line 701
    :pswitch_26
    const-string v0, "QOS_UNAVAILABLE"

    return-object v0

    .line 699
    :pswitch_29
    const-string v0, "RESOURCES_UNAVAILABLE_OR_UNSPECIFIED"

    return-object v0

    .line 697
    :pswitch_2c
    const-string v0, "REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE"

    return-object v0

    .line 695
    :pswitch_2f
    const-string v0, "ACCESS_INFORMATION_DISCARDED"

    return-object v0

    .line 693
    :pswitch_32
    const-string v0, "SWITCHING_EQUIPMENT_CONGESTION"

    return-object v0

    .line 691
    :pswitch_35
    const-string v0, "TEMPORARY_FAILURE"

    return-object v0

    .line 689
    :pswitch_38
    const-string v0, "NETWORK_OUT_OF_ORDER"

    return-object v0

    .line 663
    :pswitch_3b
    const-string v0, "RESP_TO_STATUS_ENQUIRY"

    return-object v0

    .line 661
    :pswitch_3e
    const-string v0, "FACILITY_REJECTED"

    return-object v0

    .line 659
    :pswitch_41
    const-string v0, "PREEMPTION"

    return-object v0

    .line 657
    :pswitch_44
    const-string v0, "NUMBER_CHANGED"

    return-object v0

    .line 655
    :pswitch_47
    const-string v0, "CALL_REJECTED"

    return-object v0

    .line 653
    :pswitch_4a
    const-string v0, "CHANNEL_UNACCEPTABLE"

    return-object v0

    .line 651
    :pswitch_4d
    const-string v0, "BEARER_CAPABILITY_NOT_AUTHORIZED"

    return-object v0

    .line 649
    :pswitch_50
    const-string v0, "CALL_FAIL_DESTINATION_OUT_OF_ORDER"

    return-object v0

    .line 647
    :pswitch_53
    const-string v0, "CALL_FAIL_NO_ANSWER_FROM_USER"

    return-object v0

    .line 645
    :pswitch_56
    const-string v0, "CALL_FAIL_NO_USER_RESPONDING"

    return-object v0

    .line 643
    :pswitch_59
    const-string v0, "OPERATOR_DETERMINED_BARRING"

    return-object v0

    .line 641
    :pswitch_5c
    const-string v0, "NO_ROUTE_TO_DESTINATION"

    return-object v0

    .line 639
    :pswitch_5f
    const-string v0, "NO_CIRCUIT_AVAIL"

    return-object v0

    .line 747
    :pswitch_62
    const-string v0, "LOCAL_LOW_BATTERY"

    return-object v0

    .line 745
    :pswitch_65
    const-string v0, "INTERWORKING_UNSPECIFIED"

    return-object v0

    .line 743
    :pswitch_68
    const-string v0, "PROTOCOL_ERROR_UNSPECIFIED"

    return-object v0

    .line 741
    :pswitch_6b
    const-string v0, "RECOVERY_ON_TIMER_EXPIRED"

    return-object v0

    .line 739
    :pswitch_6e
    const-string v0, "MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 737
    :pswitch_71
    const-string v0, "CONDITIONAL_IE_ERROR"

    return-object v0

    .line 735
    :pswitch_74
    const-string v0, "INFORMATION_ELEMENT_NON_EXISTENT"

    return-object v0

    .line 733
    :pswitch_77
    const-string v0, "MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE"

    return-object v0

    .line 731
    :pswitch_7a
    const-string v0, "MESSAGE_TYPE_NON_IMPLEMENTED"

    return-object v0

    .line 729
    :pswitch_7d
    const-string v0, "INVALID_MANDATORY_INFORMATION"

    return-object v0

    .line 727
    :pswitch_80
    const-string v0, "SEMANTICALLY_INCORRECT_MESSAGE"

    return-object v0

    .line 725
    :pswitch_83
    const-string v0, "INVALID_TRANSIT_NW_SELECTION"

    return-object v0

    .line 723
    :pswitch_86
    const-string v0, "INCOMPATIBLE_DESTINATION"

    return-object v0

    .line 721
    :pswitch_89
    const-string v0, "USER_NOT_MEMBER_OF_CUG"

    return-object v0

    .line 719
    :pswitch_8c
    const-string v0, "INVALID_TRANSACTION_IDENTIFIER"

    return-object v0

    .line 717
    :pswitch_8f
    const-string v0, "SERVICE_OR_OPTION_NOT_IMPLEMENTED"

    return-object v0

    .line 715
    :pswitch_92
    const-string v0, "ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE"

    return-object v0

    .line 713
    :pswitch_95
    const-string v0, "REQUESTED_FACILITY_NOT_IMPLEMENTED"

    return-object v0

    .line 711
    :pswitch_98
    const-string v0, "BEARER_SERVICE_NOT_IMPLEMENTED"

    return-object v0

    .line 709
    :pswitch_9b
    const-string v0, "SERVICE_OPTION_NOT_AVAILABLE"

    return-object v0

    .line 707
    :pswitch_9e
    const-string v0, "BEARER_CAPABILITY_UNAVAILABLE"

    return-object v0

    .line 705
    :pswitch_a1
    const-string v0, "INCOMING_CALLS_BARRED_WITHIN_CUG"

    return-object v0

    .line 687
    :pswitch_a4
    const-string v0, "INCOMING_AUTO_REJECTED"

    return-object v0

    .line 685
    :pswitch_a7
    const-string v0, "OUTGOING_EMERGENCY_CALL_PLACED"

    return-object v0

    .line 683
    :pswitch_aa
    const-string v0, "WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION"

    return-object v0

    .line 681
    :pswitch_ad
    const-string v0, "EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE"

    return-object v0

    .line 679
    :pswitch_b0
    const-string v0, "MEDIA_TIMEOUT"

    return-object v0

    .line 677
    :pswitch_b3
    const-string v0, "OTASP_PROVISIONING_IN_PROCESS"

    return-object v0

    .line 675
    :pswitch_b6
    const-string v0, "TOO_MANY_ONGOING_CALLS"

    return-object v0

    .line 673
    :pswitch_b9
    const-string v0, "CALLING_DISABLED"

    return-object v0

    .line 671
    :pswitch_bc
    const-string v0, "CANT_CALL_WHILE_RINGING"

    return-object v0

    .line 669
    :pswitch_bf
    const-string v0, "ALREADY_DIALING"

    return-object v0

    .line 667
    :pswitch_c2
    const-string v0, "IMS_SIP_ALTERNATE_EMERGENCY_CALL"

    return-object v0

    .line 599
    :pswitch_c5
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 597
    :pswitch_c8
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_DIAL"

    return-object v0

    .line 595
    :pswitch_cb
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_USSD"

    return-object v0

    .line 593
    :pswitch_ce
    const-string v0, "DIAL_VIDEO_MODIFIED_TO_SS"

    return-object v0

    .line 591
    :pswitch_d1
    const-string v0, "DIAL_MODIFIED_TO_DIAL_VIDEO"

    return-object v0

    .line 665
    :pswitch_d4
    const-string v0, "NORMAL_UNSPECIFIED"

    return-object v0

    .line 637
    :pswitch_d7
    const-string v0, "EMERGENCY_PERM_FAILURE"

    return-object v0

    .line 635
    :pswitch_da
    const-string v0, "EMERGENCY_TEMP_FAILURE"

    return-object v0

    .line 633
    :pswitch_dd
    const-string v0, "DIAL_LOW_BATTERY"

    return-object v0

    .line 631
    :pswitch_e0
    const-string v0, "LOW_BATTERY"

    return-object v0

    .line 629
    :pswitch_e3
    const-string v0, "IMS_ACCESS_BLOCKED"

    return-object v0

    .line 627
    :pswitch_e6
    const-string v0, "WIFI_LOST"

    return-object v0

    .line 625
    :pswitch_e9
    const-string v0, "IMEI_NOT_ACCEPTED"

    return-object v0

    .line 623
    :pswitch_ec
    const-string v0, "DIALED_CALL_FORWARDING_WHILE_ROAMING"

    return-object v0

    .line 621
    :pswitch_ef
    const-string v0, "DATA_LIMIT_REACHED"

    return-object v0

    .line 619
    :pswitch_f2
    const-string v0, "DATA_DISABLED"

    return-object v0

    .line 617
    :pswitch_f5
    const-string v0, "MAXIMUM_NUMER_OF_CALLS_REACHED"

    return-object v0

    .line 615
    :pswitch_f8
    const-string v0, "ANSWERED_ELSEWHERE"

    return-object v0

    .line 613
    :pswitch_fb
    const-string v0, "CALL_PULLED"

    return-object v0

    .line 611
    :pswitch_fe
    const-string v0, "VIDEO_CALL_NOT_ALLOWED_WHILE_TTY_ENABLED"

    return-object v0

    .line 609
    :pswitch_101
    const-string v0, "CDMA_ALREADY_ACTIVATED"

    return-object v0

    .line 589
    :pswitch_104
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    return-object v0

    .line 587
    :pswitch_107
    const-string v0, "DIAL_MODIFIED_TO_SS"

    return-object v0

    .line 585
    :pswitch_10a
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    return-object v0

    .line 607
    :pswitch_10d
    const-string v0, "IMS_MERGED_SUCCESSFULLY"

    return-object v0

    .line 605
    :pswitch_110
    const-string v0, "OUTGOING_CANCELED"

    return-object v0

    .line 603
    :pswitch_113
    const-string v0, "OUTGOING_FAILURE"

    return-object v0

    .line 583
    :pswitch_116
    const-string v0, "EXITED_ECM"

    return-object v0

    .line 581
    :pswitch_119
    const-string v0, "CDMA_CALL_LOST"

    return-object v0

    .line 579
    :pswitch_11c
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    return-object v0

    .line 577
    :pswitch_11f
    const-string v0, "DIALED_MMI"

    return-object v0

    .line 575
    :pswitch_122
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    return-object v0

    .line 573
    :pswitch_125
    const-string v0, "EMERGENCY_ONLY"

    return-object v0

    .line 601
    :pswitch_128
    const-string v0, "ERROR_UNSPECIFIED"

    return-object v0

    .line 571
    :pswitch_12b
    const-string v0, "CDMA_ACCESS_BLOCKED"

    return-object v0

    .line 569
    :pswitch_12e
    const-string v0, "CDMA_NOT_EMERGENCY"

    return-object v0

    .line 567
    :pswitch_131
    const-string v0, "CDMA_PREEMPTED"

    return-object v0

    .line 565
    :pswitch_134
    const-string v0, "CDMA_ACCESS_FAILURE"

    return-object v0

    .line 563
    :pswitch_137
    const-string v0, "CDMA_RETRY_ORDER"

    return-object v0

    .line 561
    :pswitch_13a
    const-string v0, "CDMA_SO_REJECT"

    return-object v0

    .line 559
    :pswitch_13d
    const-string v0, "CDMA_REORDER"

    return-object v0

    .line 557
    :pswitch_140
    const-string v0, "CDMA_INTERCEPT"

    return-object v0

    .line 555
    :pswitch_143
    const-string v0, "CDMA_DROP"

    return-object v0

    .line 553
    :pswitch_146
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    return-object v0

    .line 551
    :pswitch_149
    const-string v0, "UNOBTAINABLE_NUMBER"

    return-object v0

    .line 549
    :pswitch_14c
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    return-object v0

    .line 547
    :pswitch_14f
    const-string v0, "CS_RESTRICTED_NORMAL"

    return-object v0

    .line 545
    :pswitch_152
    const-string v0, "CS_RESTRICTED"

    return-object v0

    .line 543
    :pswitch_155
    const-string v0, "FDN_BLOCKED"

    return-object v0

    .line 541
    :pswitch_158
    const-string v0, "CALL_BARRED"

    return-object v0

    .line 539
    :pswitch_15b
    const-string v0, "ICC_ERROR"

    return-object v0

    .line 537
    :pswitch_15e
    const-string v0, "OUT_OF_SERVICE"

    return-object v0

    .line 535
    :pswitch_161
    const-string v0, "POWER_OFF"

    return-object v0

    .line 533
    :pswitch_164
    const-string v0, "INCOMING_REJECTED"

    return-object v0

    .line 531
    :pswitch_167
    const-string v0, "LIMIT_EXCEEDED"

    return-object v0

    .line 529
    :pswitch_16a
    const-string v0, "LOST_SIGNAL"

    return-object v0

    .line 527
    :pswitch_16d
    const-string v0, "TIMED_OUT"

    return-object v0

    .line 525
    :pswitch_170
    const-string v0, "SERVER_ERROR"

    return-object v0

    .line 523
    :pswitch_173
    const-string v0, "OUT_OF_NETWORK"

    return-object v0

    .line 521
    :pswitch_176
    const-string v0, "INVALID_CREDENTIALS"

    return-object v0

    .line 519
    :pswitch_179
    const-string v0, "SERVER_UNREACHABLE"

    return-object v0

    .line 517
    :pswitch_17c
    const-string v0, "NUMBER_UNREACHABLE"

    return-object v0

    .line 515
    :pswitch_17f
    const-string v0, "INVALID_NUMBER"

    return-object v0

    .line 513
    :pswitch_182
    const-string v0, "CONGESTION"

    return-object v0

    .line 511
    :pswitch_185
    const-string v0, "BUSY"

    return-object v0

    .line 509
    :pswitch_188
    const-string v0, "LOCAL"

    return-object v0

    .line 507
    :pswitch_18b
    const-string v0, "NORMAL"

    return-object v0

    .line 505
    :pswitch_18e
    const-string v0, "INCOMING_MISSED"

    return-object v0

    .line 503
    :pswitch_191
    const-string v0, "NOT_DISCONNECTED"

    return-object v0

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_191
        :pswitch_18e
        :pswitch_18b
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_3
        :pswitch_17f
        :pswitch_17c
        :pswitch_179
        :pswitch_176
        :pswitch_173
        :pswitch_170
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15e
        :pswitch_15b
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14f
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_134
        :pswitch_131
        :pswitch_12e
        :pswitch_12b
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_110
        :pswitch_10d
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f2
        :pswitch_ef
        :pswitch_3
        :pswitch_ec
        :pswitch_e9
        :pswitch_e6
        :pswitch_e3
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method
