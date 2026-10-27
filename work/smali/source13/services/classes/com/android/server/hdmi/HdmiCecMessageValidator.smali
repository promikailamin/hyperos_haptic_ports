.class public Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationResult;
    }
.end annotation


# static fields
.field public static final DEST_ALL:I = 0x3

.field public static final DEST_BROADCAST:I = 0x2

.field public static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field public static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"

.field private static final sValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smisValidAnalogueBroadcastType(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidAnalogueFrequency(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidAsciiString([BII)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAsciiString([BII)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidBroadcastSystem(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidChannelIdentifier([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidDayOfMonth(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDayOfMonth(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidDigitalServiceIdentification([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidDisplayControl(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDisplayControl(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidDurationHours(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidExternalSource([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalSource([BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidHour(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidHour(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidMinute(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidMonthOfYear(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMonthOfYear(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidPhysicalAddress([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidPlayMode(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPlayMode(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidRecordingSequence(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidRecordingSequence(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidTimerStatusData([BI)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTimerStatusData([BI)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidTunerDeviceInfo([B)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTunerDeviceInfo([B)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidUiBroadcastType(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiBroadcastType(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidUiSoundPresenationControl(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiSoundPresenationControl(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisWithinRange(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smtoErrorCode(Z)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 16

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator-IA;)V

    .line 81
    .local v0, "physicalAddressValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
    const/16 v2, 0x82

    const/4 v3, 0x6

    invoke-static {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 83
    const/16 v2, 0x9d

    const/4 v4, 0x1

    invoke-static {v2, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 84
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator-IA;)V

    const/16 v5, 0x84

    invoke-static {v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 86
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator-IA;)V

    const/16 v5, 0x80

    invoke-static {v5, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 88
    const/16 v2, 0x81

    invoke-static {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 90
    const/16 v2, 0x86

    const/4 v5, 0x2

    invoke-static {v2, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 92
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator-IA;)V

    const/16 v6, 0x70

    invoke-static {v6, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 96
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 97
    .local v2, "noneValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v7, 0xff

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 98
    const/16 v7, 0x9f

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 99
    const/16 v7, 0x91

    const/4 v8, 0x5

    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 101
    const/16 v7, 0x71

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 102
    const/16 v7, 0x8f

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 103
    const/16 v7, 0x8c

    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 105
    const/16 v7, 0x46

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 106
    const/16 v7, 0x83

    invoke-static {v7, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 108
    const/16 v7, 0x7d

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 110
    const/4 v7, 0x4

    invoke-static {v7, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 111
    const/16 v9, 0xc0

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 112
    const/16 v9, 0xb

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 113
    const/16 v9, 0xf

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 114
    const/16 v9, 0xc1

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 115
    const/16 v9, 0xc2

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 116
    const/16 v9, 0xc3

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 117
    const/16 v9, 0xc4

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 118
    const/16 v9, 0x85

    invoke-static {v9, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 120
    const/16 v9, 0x36

    const/4 v10, 0x7

    invoke-static {v9, v2, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 121
    const/16 v9, 0xc5

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 122
    const/16 v9, 0xd

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 123
    invoke-static {v3, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 124
    invoke-static {v8, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 125
    const/16 v9, 0x45

    invoke-static {v9, v2, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 126
    const/16 v9, 0x8b

    const/4 v11, 0x3

    invoke-static {v9, v2, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 131
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v12, 0x8

    invoke-direct {v9, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v13, 0x9

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 133
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator-IA;)V

    const/16 v13, 0xa

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 136
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V

    const/16 v13, 0x33

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 138
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V

    const/16 v13, 0x99

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 140
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator-IA;)V

    const/16 v13, 0xa1

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 142
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V

    const/16 v13, 0x34

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 144
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator-IA;)V

    const/16 v13, 0x97

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 146
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator-IA;)V

    const/16 v13, 0xa2

    invoke-static {v13, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 148
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/16 v13, 0xe

    invoke-direct {v9, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v14, 0x67

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 150
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator-IA;)V

    const/16 v14, 0x43

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 154
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;

    invoke-direct {v9, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator-IA;)V

    const/16 v14, 0x35

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 157
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 158
    .local v9, "oneByteValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v14, 0x9e

    invoke-static {v14, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 159
    new-instance v14, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v14, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(I)V

    const/16 v15, 0x32

    invoke-static {v15, v14, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 162
    new-instance v14, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v14, v4, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    .line 163
    .local v14, "statusRequestValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    new-instance v15, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v15, v4, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v3, 0x42

    invoke-static {v3, v15, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 165
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/16 v15, 0x11

    const/16 v7, 0x1f

    invoke-direct {v3, v15, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x1b

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 167
    const/16 v3, 0x1a

    invoke-static {v3, v14, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 168
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator-IA;)V

    const/16 v7, 0x41

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 170
    invoke-static {v12, v14, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 172
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator-IA;)V

    const/16 v7, 0x92

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 176
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator-IA;)V

    const/16 v7, 0x93

    invoke-static {v7, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 180
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;

    invoke-direct {v3, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator-IA;)V

    invoke-static {v10, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 186
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v3, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    .line 187
    .local v3, "maxLengthValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v7, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v12, 0x87

    invoke-static {v12, v7, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 191
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v7, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v12, 0x89

    invoke-static {v12, v7, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 193
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v12, 0x4

    invoke-direct {v7, v12, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v12, 0xa0

    invoke-static {v12, v7, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 195
    const/16 v7, 0x8a

    invoke-static {v7, v3, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 199
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;

    invoke-direct {v7, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator-IA;)V

    const/16 v10, 0x64

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 200
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v7, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(II)V

    const/16 v10, 0x47

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 203
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v7, v6, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v10, 0x8d

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 205
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v7, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v10, 0x8e

    invoke-static {v10, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 209
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;

    invoke-direct {v7, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator-IA;)V

    const/16 v1, 0x44

    invoke-static {v1, v7, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 215
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x90

    invoke-static {v7, v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 221
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v1, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-static {v6, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 225
    const/16 v1, 0x7a

    invoke-static {v1, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 226
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v7, 0xa3

    invoke-static {v7, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 228
    const/16 v1, 0xa4

    invoke-static {v1, v9, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 230
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x72

    invoke-static {v7, v1, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 234
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v1, v6, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v7, 0x7e

    invoke-static {v7, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 240
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/4 v7, 0x6

    invoke-direct {v1, v6, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(II)V

    const/16 v6, 0x9a

    invoke-static {v6, v1, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 246
    const/16 v1, 0xa5

    invoke-static {v1, v2, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 250
    const/16 v1, 0xa7

    invoke-static {v1, v0, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 252
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v4, 0xa8

    invoke-static {v4, v1, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 258
    const/16 v1, 0xf8

    const/4 v4, 0x6

    invoke-static {v1, v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 260
    .end local v0    # "physicalAddressValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
    .end local v2    # "noneValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    .end local v3    # "maxLengthValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
    .end local v9    # "oneByteValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    .end local v14    # "statusRequestValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .registers 5
    .param p0, "opcode"    # I
    .param p1, "validator"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p2, "addrType"    # I

    .line 263
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 264
    return-void
.end method

.method private static isAribDbs(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 534
    if-eqz p0, :cond_f

    const/16 v0, 0x8

    const/16 v1, 0xa

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private static isAtscDbs(I)Z
    .registers 4
    .param p0, "value"    # I

    .line 545
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/16 v1, 0x10

    const/16 v2, 0x12

    invoke-static {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method

.method private static isDvbDbs(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 556
    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/16 v0, 0x18

    const/16 v1, 0x1b

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method private static isValidAnalogueBroadcastType(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 499
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidAnalogueFrequency(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 511
    const v0, 0xffff

    and-int/2addr p0, v0

    .line 512
    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isValidAsciiString([BII)Z
    .registers 7
    .param p0, "params"    # [B
    .param p1, "offset"    # I
    .param p2, "maxLength"    # I

    .line 410
    move v0, p1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_17

    if-ge v0, p2, :cond_17

    .line 411
    aget-byte v1, p0, v0

    const/16 v2, 0x20

    const/16 v3, 0x7e

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_14

    .line 412
    const/4 v1, 0x0

    return v1

    .line 410
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 415
    .end local v0    # "i":I
    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method private static isValidBroadcastSystem(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 523
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidChannelIdentifier([BI)Z
    .registers 7
    .param p0, "params"    # [B
    .param p1, "offset"    # I

    .line 582
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xfc

    .line 583
    .local v0, "channelNumberFormat":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_11

    .line 585
    array-length v2, p0

    sub-int/2addr v2, p1

    const/4 v4, 0x3

    if-lt v2, v4, :cond_f

    goto :goto_10

    :cond_f
    move v1, v3

    :goto_10
    return v1

    .line 586
    :cond_11
    const/16 v4, 0x8

    if-ne v0, v4, :cond_1c

    .line 588
    array-length v4, p0

    sub-int/2addr v4, p1

    if-lt v4, v2, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    return v1

    .line 590
    :cond_1c
    return v3
.end method

.method private static isValidDayOfMonth(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 426
    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidDigitalBroadcastSystem(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 568
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method private static isValidDigitalServiceIdentification([BI)Z
    .registers 8
    .param p0, "params"    # [B
    .param p1, "offset"    # I

    .line 604
    aget-byte v0, p0, p1

    const/16 v1, 0x80

    and-int/2addr v0, v1

    .line 606
    .local v0, "serviceIdentificationMethod":I
    aget-byte v2, p0, p1

    and-int/lit8 v2, v2, 0x7f

    .line 607
    .local v2, "digitalBroadcastSystem":I
    const/4 v3, 0x1

    add-int/2addr p1, v3

    .line 608
    const/4 v4, 0x0

    if-nez v0, :cond_37

    .line 610
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v1

    const/4 v5, 0x6

    if-eqz v1, :cond_1c

    .line 612
    array-length v1, p0

    sub-int/2addr v1, p1

    if-lt v1, v5, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v4

    :goto_1b
    return v3

    .line 613
    :cond_1c
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 615
    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v5, 0x4

    if-lt v1, v5, :cond_28

    goto :goto_29

    :cond_28
    move v3, v4

    :goto_29
    return v3

    .line 616
    :cond_2a
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 618
    array-length v1, p0

    sub-int/2addr v1, p1

    if-lt v1, v5, :cond_35

    goto :goto_36

    :cond_35
    move v3, v4

    :goto_36
    return v3

    .line 620
    :cond_37
    if-ne v0, v1, :cond_44

    .line 622
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalBroadcastSystem(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 623
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result v1

    return v1

    .line 626
    :cond_44
    return v4
.end method

.method private static isValidDisplayControl(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 395
    and-int/lit16 p0, p0, 0xff

    .line 396
    if-eqz p0, :cond_13

    const/16 v0, 0x40

    if-eq p0, v0, :cond_13

    const/16 v0, 0x80

    if-eq p0, v0, :cond_13

    const/16 v0, 0xc0

    if-ne p0, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isValidDurationHours(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 470
    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidExternalPlug(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 637
    const/4 v0, 0x1

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidExternalSource([BI)Z
    .registers 5
    .param p0, "params"    # [B
    .param p1, "offset"    # I

    .line 648
    aget-byte v0, p0, p1

    .line 649
    .local v0, "externalSourceSpecifier":I
    add-int/lit8 p1, p1, 0x1

    .line 650
    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 652
    aget-byte v1, p0, p1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalPlug(I)Z

    move-result v1

    return v1

    .line 653
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    .line 656
    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1b

    .line 657
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result v1

    return v1

    .line 660
    :cond_1b
    const/4 v1, 0x0

    return v1
.end method

.method private static isValidHour(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 448
    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidMinute(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 459
    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidMonthOfYear(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 437
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidNotProgrammedErrorInfo(I)Z
    .registers 3
    .param p0, "nonProgramedErrorInfo"    # I

    .line 668
    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidPhysicalAddress([BI)Z
    .registers 6
    .param p0, "params"    # [B
    .param p1, "offset"    # I

    .line 352
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 353
    .local v0, "physicalAddress":I
    :goto_4
    if-eqz v0, :cond_18

    .line 354
    const v1, 0xf000

    and-int/2addr v1, v0

    .line 355
    .local v1, "maskedAddress":I
    shl-int/lit8 v2, v0, 0x4

    const v3, 0xffff

    and-int v0, v2, v3

    .line 356
    if-nez v1, :cond_17

    if-eqz v0, :cond_17

    .line 357
    const/4 v2, 0x0

    return v2

    .line 359
    .end local v1    # "maskedAddress":I
    :cond_17
    goto :goto_4

    .line 360
    :cond_18
    const/4 v1, 0x1

    return v1
.end method

.method private static isValidPlayMode(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 711
    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x9

    const/16 v1, 0xb

    .line 712
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x15

    const/16 v1, 0x17

    .line 713
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x19

    const/16 v1, 0x1b

    .line 714
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x24

    const/16 v1, 0x25

    .line 715
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x20

    if-ne p0, v0, :cond_35

    goto :goto_37

    :cond_35
    const/4 v0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v0, 0x1

    .line 711
    :goto_38
    return v0
.end method

.method private static isValidProgrammedInfo(I)Z
    .registers 3
    .param p0, "programedInfo"    # I

    .line 664
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private static isValidRecordingSequence(I)Z
    .registers 4
    .param p0, "value"    # I

    .line 481
    and-int/lit16 p0, p0, 0xff

    .line 483
    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 484
    return v1

    .line 487
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method private static isValidTimerStatusData([BI)Z
    .registers 8
    .param p0, "params"    # [B
    .param p1, "offset"    # I

    .line 672
    aget-byte v0, p0, p1

    const/16 v1, 0x10

    and-int/2addr v0, v1

    .line 673
    .local v0, "programedIndicator":I
    const/4 v2, 0x0

    .line 674
    .local v2, "durationAvailable":Z
    const/4 v3, 0x1

    if-ne v0, v1, :cond_1f

    .line 676
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    .line 677
    .local v1, "programedInfo":I
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidProgrammedInfo(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 678
    const/16 v4, 0x9

    if-eq v1, v4, :cond_1d

    const/16 v4, 0xb

    if-ne v1, v4, :cond_1c

    goto :goto_1d

    .line 681
    :cond_1c
    return v3

    .line 679
    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 684
    .end local v1    # "programedInfo":I
    :cond_1e
    goto :goto_30

    .line 686
    :cond_1f
    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0xf

    .line 687
    .local v1, "nonProgramedErrorInfo":I
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidNotProgrammedErrorInfo(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 688
    const/16 v4, 0xe

    if-ne v1, v4, :cond_2f

    .line 689
    const/4 v2, 0x1

    goto :goto_30

    .line 691
    :cond_2f
    return v3

    .line 695
    .end local v1    # "nonProgramedErrorInfo":I
    :cond_30
    :goto_30
    add-int/2addr p1, v3

    .line 697
    const/4 v1, 0x0

    if-eqz v2, :cond_4e

    array-length v4, p0

    sub-int/2addr v4, p1

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4e

    .line 698
    aget-byte v4, p0, p1

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v3, v1

    :goto_4d
    return v3

    .line 700
    :cond_4e
    return v1
.end method

.method private static isValidTunerDeviceInfo([B)Z
    .registers 7
    .param p0, "params"    # [B

    .line 771
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    .line 772
    .local v1, "tunerDisplayInfo":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_11

    .line 774
    array-length v4, p0

    if-lt v4, v2, :cond_39

    .line 775
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result v0

    return v0

    .line 777
    :cond_11
    if-ne v1, v3, :cond_14

    .line 779
    return v3

    .line 780
    :cond_14
    const/4 v4, 0x2

    if-ne v1, v4, :cond_39

    .line 782
    array-length v5, p0

    if-lt v5, v2, :cond_39

    .line 783
    aget-byte v2, p0, v3

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 784
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    .line 785
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result v2

    if-eqz v2, :cond_37

    move v0, v3

    goto :goto_38

    :cond_37
    nop

    .line 783
    :goto_38
    return v0

    .line 788
    :cond_39
    return v0
.end method

.method static isValidType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 373
    if-ltz p0, :cond_a

    const/4 v0, 0x7

    if-gt p0, v0, :cond_a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isValidUiBroadcastType(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 728
    const/4 v0, 0x1

    if-eqz p0, :cond_33

    if-eq p0, v0, :cond_33

    const/16 v1, 0x10

    if-eq p0, v1, :cond_33

    const/16 v1, 0x20

    if-eq p0, v1, :cond_33

    const/16 v1, 0x30

    if-eq p0, v1, :cond_33

    const/16 v1, 0x40

    if-eq p0, v1, :cond_33

    const/16 v1, 0x50

    if-eq p0, v1, :cond_33

    const/16 v1, 0x60

    if-eq p0, v1, :cond_33

    const/16 v1, 0x70

    if-eq p0, v1, :cond_33

    const/16 v1, 0x80

    if-eq p0, v1, :cond_33

    const/16 v1, 0x90

    if-eq p0, v1, :cond_33

    const/16 v1, 0x91

    if-eq p0, v1, :cond_33

    const/16 v1, 0xa0

    if-ne p0, v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :cond_33
    :goto_33
    return v0
.end method

.method private static isValidUiSoundPresenationControl(I)Z
    .registers 3
    .param p0, "value"    # I

    .line 752
    and-int/lit16 p0, p0, 0xff

    .line 753
    const/16 v0, 0x20

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x30

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x90

    if-eq p0, v0, :cond_2d

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_2d

    const/16 v0, 0xb1

    const/16 v1, 0xb3

    .line 758
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0xc1

    const/16 v1, 0xc3

    .line 759
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v0, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v0, 0x1

    .line 753
    :goto_2e
    return v0
.end method

.method private static isWithinRange(III)Z
    .registers 4
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 383
    and-int/lit16 p0, p0, 0xff

    .line 384
    if-lt p0, p1, :cond_8

    if-gt p0, p2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static toErrorCode(Z)I
    .registers 2
    .param p0, "success"    # Z

    .line 379
    if-eqz p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    :goto_5
    return v0
.end method

.method static validate(III[B)I
    .registers 8
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "opcode"    # I
    .param p3, "params"    # [B

    .line 271
    sget-object v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->sValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .line 273
    .local v0, "info":Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No validation information for the opcode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    return v1

    .line 278
    :cond_24
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    invoke-static {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(III)I

    move-result v2

    .line 279
    .local v2, "addressValidationResult":I
    if-eqz v2, :cond_2d

    .line 280
    return v2

    .line 284
    :cond_2d
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-interface {v3, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v3

    .line 285
    .local v3, "errorCode":I
    if-eqz v3, :cond_36

    .line 286
    return v3

    .line 289
    :cond_36
    return v1
.end method

.method static validateAddress(III)I
    .registers 5
    .param p0, "source"    # I
    .param p1, "destination"    # I
    .param p2, "addressType"    # I

    .line 303
    const/16 v0, 0xf

    if-ne p0, v0, :cond_a

    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_a

    .line 305
    const/4 v0, 0x1

    return v0

    .line 309
    :cond_a
    const/4 v1, 0x2

    if-ne p1, v0, :cond_12

    .line 310
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_17

    .line 311
    return v1

    .line 314
    :cond_12
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_17

    .line 315
    return v1

    .line 318
    :cond_17
    const/4 v0, 0x0

    return v0
.end method
