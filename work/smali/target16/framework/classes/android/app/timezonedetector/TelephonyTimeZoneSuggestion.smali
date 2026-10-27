.class public final Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
.super Ljava/lang/Object;
.source "TelephonyTimeZoneSuggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;,
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Quality;,
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$MatchType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist MATCH_TYPE_EMULATOR_ZONE_ID:I = 0x4

.field public static final blacklist MATCH_TYPE_NA:I = 0x0

.field public static final blacklist MATCH_TYPE_NETWORK_COUNTRY_AND_OFFSET:I = 0x3

.field public static final blacklist MATCH_TYPE_NETWORK_COUNTRY_ONLY:I = 0x2

.field public static final blacklist MATCH_TYPE_TEST_NETWORK_OFFSET_ONLY:I = 0x5

.field public static final blacklist QUALITY_MULTIPLE_ZONES_WITH_DIFFERENT_OFFSETS:I = 0x3

.field public static final blacklist QUALITY_MULTIPLE_ZONES_WITH_SAME_OFFSET:I = 0x2

.field public static final blacklist QUALITY_NA:I = 0x0

.field public static final blacklist QUALITY_SINGLE_ZONE:I = 0x1


# instance fields
.field private final blacklist mCountryIsoCode:Ljava/lang/String;

.field private blacklist mDebugInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMatchType:I

.field private final blacklist mQuality:I

.field private final blacklist mSlotIndex:I

.field private final blacklist mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

.field private final blacklist mZoneId:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$1;

    invoke-direct {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$1;-><init>()V

    sput-object v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)V
    .registers 4

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmSlotIndex(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    .line 157
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmZoneId(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmCountryIsoCode(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    .line 159
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmMatchType(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    .line 160
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmQuality(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    .line 161
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmDebugInfo(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 162
    invoke-static {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->-$$Nest$fgetmTelephonySignal(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)Landroid/app/timezonedetector/TelephonySignal;

    move-result-object p1

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;)V

    return-void
.end method

.method public static blacklist createEmptySuggestion(ILjava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 3

    .line 87
    new-instance v0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    invoke-virtual {v0, p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 4

    .line 168
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    new-instance v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-direct {v1, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 171
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setCountryIsoCode(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    const-class v1, Landroid/app/timezonedetector/TelephonySignal;

    .line 177
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/timezonedetector/TelephonySignal;

    .line 176
    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/timezonedetector/TelephonySignal;

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setTelephonySignal(Landroid/app/timezonedetector/TelephonySignal;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 180
    nop

    .line 181
    const-class v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 182
    if-eqz p0, :cond_51

    .line 183
    invoke-virtual {v0, p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->addDebugInfo(Ljava/util/List;)V

    .line 185
    :cond_51
    return-object v0
.end method

.method public static blacklist parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 472
    nop

    .line 473
    nop

    .line 474
    nop

    .line 475
    nop

    .line 476
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    .line 478
    :goto_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_99

    .line 479
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_e8

    :cond_16
    goto :goto_49

    :sswitch_17
    const-string v6, "--slot_index"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x0

    goto :goto_4a

    :sswitch_21
    const-string v6, "--quality"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x3

    goto :goto_4a

    :sswitch_2b
    const-string v6, "--zone_id"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x1

    goto :goto_4a

    :sswitch_35
    const-string v6, "--country-iso-code"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x2

    goto :goto_4a

    :sswitch_3f
    const-string v6, "--match_type"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, 0x4

    goto :goto_4a

    :goto_49
    const/4 v6, -0x1

    :goto_4a
    packed-switch v6, :pswitch_data_fe

    .line 502
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 497
    :pswitch_66
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseMatchTypeCommandLineArg(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 498
    goto :goto_97

    .line 493
    :pswitch_73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseQualityCommandLineArg(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 494
    goto :goto_97

    .line 489
    :pswitch_80
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 490
    goto :goto_97

    .line 485
    :pswitch_85
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 486
    goto :goto_97

    .line 481
    :pswitch_8a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 482
    nop

    .line 504
    :goto_97
    goto/16 :goto_9

    .line 507
    :cond_99
    if-eqz v0, :cond_e0

    .line 511
    new-instance p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;-><init>(I)V

    .line 512
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "_"

    if-nez v0, :cond_b5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 513
    invoke-virtual {p0, v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setZoneId(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 515
    :cond_b5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c4

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    .line 516
    invoke-virtual {p0, v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setCountryIsoCode(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 518
    :cond_c4
    if-eqz v3, :cond_cd

    .line 519
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setQuality(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 521
    :cond_cd
    if-eqz v4, :cond_d6

    .line 522
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->setMatchType(I)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 524
    :cond_d6
    const-string v0, "Command line injection"

    invoke-virtual {p0, v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->addDebugInfo(Ljava/lang/String;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;

    .line 525
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion$Builder;->build()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0

    .line 508
    :cond_e0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No slotIndex specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_e8
    .sparse-switch
        -0xa64c0ec -> :sswitch_3f
        0x13a5dc2c -> :sswitch_35
        0x4bfc04ee -> :sswitch_2b
        0x796d275f -> :sswitch_21
        0x7b56fcf1 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_85
        :pswitch_80
        :pswitch_73
        :pswitch_66
    .end packed-switch
.end method

.method private static blacklist parseMatchTypeCommandLineArg(Ljava/lang/String;)I
    .registers 4

    .line 542
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    sparse-switch v0, :sswitch_data_56

    :cond_9
    goto :goto_33

    :sswitch_a
    const-string v0, "emulator"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_34

    :sswitch_14
    const-string v0, "country"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_34

    :sswitch_1e
    const-string/jumbo v0, "test_network"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_34

    :sswitch_29
    const-string v0, "country_with_offset"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_34

    :goto_33
    const/4 v0, -0x1

    :goto_34
    packed-switch v0, :pswitch_data_68

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized match_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_50
    const/4 p0, 0x5

    return p0

    .line 548
    :pswitch_52
    return v1

    .line 546
    :pswitch_53
    return v2

    .line 544
    :pswitch_54
    const/4 p0, 0x4

    return p0

    :sswitch_data_56
    .sparse-switch
        -0x5eee94fd -> :sswitch_29
        0x212a9381 -> :sswitch_1e
        0x39175796 -> :sswitch_14
        0x4fa4b315 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_50
    .end packed-switch
.end method

.method private static blacklist parseQualityCommandLineArg(Ljava/lang/String;)I
    .registers 4

    .line 529
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_4c

    :cond_9
    goto :goto_2b

    :sswitch_a
    const-string/jumbo v0, "multiple_different"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2c

    :sswitch_15
    const-string/jumbo v0, "multiple_same"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_2c

    :sswitch_20
    const-string/jumbo v0, "single"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2c

    :goto_2b
    const/4 v0, -0x1

    :goto_2c
    packed-switch v0, :pswitch_data_5a

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :pswitch_48
    const/4 p0, 0x3

    return p0

    .line 533
    :pswitch_4a
    return v1

    .line 531
    :pswitch_4b
    return v2

    :sswitch_data_4c
    .sparse-switch
        -0x35c77bb8 -> :sswitch_20
        -0x26c2e2cb -> :sswitch_15
        0x60129cca -> :sswitch_a
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_48
    .end packed-switch
.end method

.method public static blacklist printCommandLineOpts(Ljava/io/PrintWriter;)V
    .registers 3

    .line 558
    const-string v0, "Telephony suggestion options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    const-string v0, "  --slot_index <number>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    const-string v0, "  To withdraw a previous suggestion:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "    [--zone_id \"_\"]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "  To make a new suggestion:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "    --zone_id <Olson ID>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "    --quality <single|multiple_same|multiple_different>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v0, "    --match_type <emulator|country_with_offset|country|test_network>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 567
    const-string v0, "Note: TelephonySignal data is not directly configurable via command line."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "See "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for more information"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    return-void
.end method


# virtual methods
.method public blacklist addDebugInfo(Ljava/lang/String;)V
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_b

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 282
    :cond_b
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public blacklist addDebugInfo(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_f

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    .line 294
    :cond_f
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 295
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 299
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 300
    return v0

    .line 302
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_47

    .line 305
    :cond_12
    check-cast p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 306
    iget v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    iget v3, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    iget v3, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    iget v3, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    .line 309
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    .line 310
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    iget-object p1, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    .line 311
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_46

    :cond_45
    move v0, v1

    .line 306
    :goto_46
    return v0

    .line 303
    :cond_47
    :goto_47
    return v1
.end method

.method public blacklist getCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDebugInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    if-nez v0, :cond_9

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f

    :cond_9
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 263
    :goto_f
    return-object v0
.end method

.method public blacklist getMatchType()I
    .registers 2

    .line 243
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    return v0
.end method

.method public blacklist getQuality()I
    .registers 2

    .line 253
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    return v0
.end method

.method public blacklist getSlotIndex()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    return v0
.end method

.method public blacklist getTelephonySignal()Landroid/app/timezonedetector/TelephonySignal;
    .registers 2

    .line 270
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    return-object v0
.end method

.method public blacklist getZoneId()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 316
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    .line 317
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 316
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyTimeZoneSuggestion{mSlotIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mZoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCountryIsoCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTelephonySignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 190
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIsoCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mMatchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mTelephonySignal:Landroid/app/timezonedetector/TelephonySignal;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 196
    iget-object p2, p0, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mDebugInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 197
    return-void
.end method
