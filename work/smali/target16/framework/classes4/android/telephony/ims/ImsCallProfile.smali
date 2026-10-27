.class public final Landroid/telephony/ims/ImsCallProfile;
.super Ljava/lang/Object;
.source "ImsCallProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsCallProfile$VerificationStatus;,
        Landroid/telephony/ims/ImsCallProfile$CallRestrictCause;
    }
.end annotation


# static fields
.field public static final whitelist CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final whitelist CALL_RESTRICT_CAUSE_HD:I = 0x3

.field public static final whitelist CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final whitelist CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final whitelist CALL_TYPE_NONE:I = 0x0

.field public static final whitelist CALL_TYPE_VIDEO_N_VOICE:I = 0x3

.field public static final whitelist CALL_TYPE_VOICE:I = 0x2

.field public static final whitelist CALL_TYPE_VOICE_N_VIDEO:I = 0x1

.field public static final whitelist CALL_TYPE_VS:I = 0x8

.field public static final whitelist CALL_TYPE_VS_RX:I = 0xa

.field public static final whitelist CALL_TYPE_VS_TX:I = 0x9

.field public static final whitelist CALL_TYPE_VT:I = 0x4

.field public static final whitelist CALL_TYPE_VT_NODIR:I = 0x7

.field public static final whitelist CALL_TYPE_VT_RX:I = 0x6

.field public static final whitelist CALL_TYPE_VT_TX:I = 0x5

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsCallProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIALSTRING_NORMAL:I = 0x0

.field public static final whitelist DIALSTRING_SS_CONF:I = 0x1

.field public static final whitelist DIALSTRING_USSD:I = 0x2

.field public static final whitelist EXTRA_ADDITIONAL_CALL_INFO:Ljava/lang/String; = "AdditionalCallInfo"

.field public static final whitelist EXTRA_ADDITIONAL_SIP_INVITE_FIELDS:Ljava/lang/String; = "android.telephony.ims.extra.ADDITIONAL_SIP_INVITE_FIELDS"

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telephony.ims.extra.ASSERTED_DISPLAY_NAME"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

.field public static final greylist-max-o EXTRA_CALL_MODE_CHANGEABLE:Ljava/lang/String; = "call_mode_changeable"

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telephony.ims.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_RAT_TYPE:Ljava/lang/String; = "CallRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_RAT_TYPE_ALT:Ljava/lang/String; = "callRadioTech"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telephony.ims.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_NUMBER:Ljava/lang/String; = "ChildNum"

.field public static final whitelist EXTRA_CNA:Ljava/lang/String; = "cna"

.field public static final whitelist EXTRA_CNAP:Ljava/lang/String; = "cnap"

.field public static final whitelist EXTRA_CODEC:Ljava/lang/String; = "Codec"

.field public static final whitelist EXTRA_CONFERENCE:Ljava/lang/String; = "android.telephony.ims.extra.CONFERENCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CONFERENCE_AVAIL:Ljava/lang/String; = "conference_avail"

.field public static final blacklist EXTRA_CONFERENCE_DEPRECATED:Ljava/lang/String; = "conference"

.field public static final whitelist EXTRA_DIALSTRING:Ljava/lang/String; = "dialstring"

.field public static final whitelist EXTRA_DISPLAY_TEXT:Ljava/lang/String; = "DisplayText"

.field public static final whitelist EXTRA_EMERGENCY_CALL:Ljava/lang/String; = "e_call"

.field public static final whitelist EXTRA_EXTENDING_TO_CONFERENCE_SUPPORTED:Ljava/lang/String; = "android.telephony.ims.extra.EXTENDING_TO_CONFERENCE_SUPPORTED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_FORWARDED_NUMBER:Ljava/lang/String; = "android.telephony.ims.extra.FORWARDED_NUMBER"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_CALL_PULL:Ljava/lang/String; = "CallPull"

.field public static final whitelist EXTRA_IS_CROSS_SIM_CALL:Ljava/lang/String; = "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

.field public static final blacklist EXTRA_IS_USING_VIDEO_RINGBACK:Ljava/lang/String; = "android.telephony.ims.extra.IS_USING_VIDEO_RINGBACK"

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telephony.ims.extra.LOCATION"

.field public static final greylist-max-o EXTRA_OEM_EXTRAS:Ljava/lang/String; = "android.telephony.ims.extra.OEM_EXTRAS"

.field public static final whitelist EXTRA_OI:Ljava/lang/String; = "oi"

.field public static final whitelist EXTRA_OIR:Ljava/lang/String; = "oir"

.field public static final whitelist EXTRA_PICTURE_URL:Ljava/lang/String; = "android.telephony.ims.extra.PICTURE_URL"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telephony.ims.extra.PRIORITY"

.field public static final whitelist EXTRA_REMOTE_URI:Ljava/lang/String; = "remote_uri"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_NETWORKTYPE:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

.field public static final blacklist EXTRA_RETRY_CALL_FAIL_REASON:Ljava/lang/String; = "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

.field public static final whitelist EXTRA_USSD:Ljava/lang/String; = "ussd"

.field public static final greylist-max-o EXTRA_VMS:Ljava/lang/String; = "vms"

.field public static final whitelist OIR_DEFAULT:I = 0x0

.field public static final whitelist OIR_PRESENTATION_NOT_RESTRICTED:I = 0x2

.field public static final whitelist OIR_PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist OIR_PRESENTATION_RESTRICTED:I = 0x1

.field public static final whitelist OIR_PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist OIR_PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final whitelist SERVICE_TYPE_EMERGENCY:I = 0x2

.field public static final whitelist SERVICE_TYPE_NONE:I = 0x0

.field public static final whitelist SERVICE_TYPE_NORMAL:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsCallProfile"

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private blacklist mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-r mCallExtras:Landroid/os/Bundle;

.field public greylist-max-r mCallType:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private blacklist mEmergencyCallRouting:I

.field private blacklist mEmergencyCallTesting:Z

.field private blacklist mEmergencyServiceCategories:I

.field private blacklist mEmergencyUrns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHasKnownUserIntentEmergency:Z

.field public greylist-max-r mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

.field public greylist-max-r mRestrictCause:I

.field public greylist-max-o mServiceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 884
    new-instance v0, Landroid/telephony/ims/ImsCallProfile$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 561
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 584
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 588
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 591
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 593
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 634
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 635
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 636
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 637
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 638
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 5

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 561
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 584
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 588
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 591
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 593
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 660
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 661
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 662
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 663
    new-instance p1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 664
    return-void
.end method

.method public constructor whitelist <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 7

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 561
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 584
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 588
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 591
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 593
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 689
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 690
    iput p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 691
    iput-object p3, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 692
    iput-object p4, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 693
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 561
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 584
    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 588
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 591
    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 593
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 626
    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->readFromParcel(Landroid/os/Parcel;)V

    .line 627
    return-void
.end method

.method public static greylist-max-o OIRToPresentation(I)I
    .registers 2

    .line 1044
    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_e

    .line 1056
    return v0

    .line 1052
    :pswitch_5
    const/4 p0, 0x5

    return p0

    .line 1050
    :pswitch_7
    const/4 p0, 0x4

    return p0

    .line 1054
    :pswitch_9
    return v0

    .line 1048
    :pswitch_a
    const/4 p0, 0x1

    return p0

    .line 1046
    :pswitch_c
    const/4 p0, 0x2

    return p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist getCallTypeFromVideoState(I)I
    .registers 5

    .line 990
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v0

    .line 991
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result v2

    .line 992
    const/4 v3, 0x4

    invoke-static {p0, v3}, Landroid/telephony/ims/ImsCallProfile;->isVideoStateSet(II)Z

    move-result p0

    .line 993
    if-eqz p0, :cond_13

    .line 994
    const/4 p0, 0x7

    return p0

    .line 995
    :cond_13
    if-eqz v0, :cond_19

    if-nez v2, :cond_19

    .line 996
    const/4 p0, 0x5

    return p0

    .line 997
    :cond_19
    if-nez v0, :cond_1f

    if-eqz v2, :cond_1f

    .line 998
    const/4 p0, 0x6

    return p0

    .line 999
    :cond_1f
    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    .line 1000
    return v3

    .line 1002
    :cond_24
    return v1
.end method

.method public static whitelist getVideoStateFromCallType(I)I
    .registers 2

    .line 961
    nop

    .line 962
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_12

    .line 976
    :pswitch_5
    goto :goto_11

    .line 967
    :pswitch_6
    nop

    .line 968
    const/4 v0, 0x2

    goto :goto_11

    .line 964
    :pswitch_9
    nop

    .line 965
    const/4 v0, 0x1

    goto :goto_11

    .line 970
    :pswitch_c
    nop

    .line 971
    const/4 v0, 0x3

    goto :goto_11

    .line 973
    :pswitch_f
    nop

    .line 974
    nop

    .line 979
    :goto_11
    return v0

    :pswitch_data_12
    .packed-switch 0x2
        :pswitch_f
        :pswitch_5
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static whitelist getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I
    .registers 2

    .line 946
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    .line 947
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallProfile;->isVideoPaused()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isAudioOnly(I)Z

    move-result p0

    if-nez p0, :cond_15

    .line 948
    or-int/lit8 p0, v0, 0x4

    goto :goto_17

    .line 950
    :cond_15
    and-int/lit8 p0, v0, -0x5

    .line 952
    :goto_17
    return p0
.end method

.method private static greylist-max-o isVideoStateSet(II)Z
    .registers 2

    .line 1110
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method static synthetic blacklist lambda$readFromParcel$0(Ljava/lang/Object;)Landroid/telephony/ims/RtpHeaderExtensionType;
    .registers 1

    .line 881
    check-cast p0, Landroid/telephony/ims/RtpHeaderExtensionType;

    return-object p0
.end method

.method private greylist-max-o maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 1088
    if-nez p1, :cond_4

    .line 1089
    const/4 p1, 0x0

    return-object p1

    .line 1092
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    .line 1093
    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 1094
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    .line 1095
    if-eq v0, v1, :cond_31

    .line 1096
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeCleanseExtras: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extra values were removed - only primitive types and system parcelables are permitted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_31
    return-object p1
.end method

.method public static greylist-max-r presentationToOIR(I)I
    .registers 1

    .line 1012
    packed-switch p0, :pswitch_data_10

    .line 1024
    const/4 p0, 0x0

    return p0

    .line 1022
    :pswitch_5
    const/4 p0, 0x5

    return p0

    .line 1018
    :pswitch_7
    const/4 p0, 0x4

    return p0

    .line 1020
    :pswitch_9
    const/4 p0, 0x3

    return p0

    .line 1014
    :pswitch_b
    const/4 p0, 0x1

    return p0

    .line 1016
    :pswitch_d
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist presentationToOir(I)I
    .registers 1

    .line 1034
    invoke-static {p0}, Landroid/telephony/ims/ImsCallProfile;->presentationToOIR(I)I

    move-result p0

    return p0
.end method

.method private greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 870
    const-class v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 872
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 873
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 874
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 875
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 876
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 877
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 878
    const-class v0, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/RtpHeaderExtensionType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 880
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile$$ExternalSyntheticLambda0;-><init>()V

    .line 881
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    .line 882
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 846
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAcceptedRtpHeaderExtensionTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;"
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 696
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCallExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 700
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 701
    return-object p2

    .line 704
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;)Z
    .registers 3

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist getCallExtraBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 712
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 713
    return p2

    .line 716
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;)I
    .registers 3

    .line 720
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist getCallExtraInt(Ljava/lang/String;I)I
    .registers 4

    .line 724
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 725
    return p2

    .line 728
    :cond_5
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public whitelist getCallExtraParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    .line 739
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1

    .line 741
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getCallExtras()Landroid/os/Bundle;
    .registers 2

    .line 914
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getCallType()I
    .registers 2

    .line 902
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .registers 2

    .line 823
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public whitelist getEmergencyCallRouting()I
    .registers 2

    .line 1255
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    return v0
.end method

.method public whitelist getEmergencyServiceCategories()I
    .registers 2

    .line 1229
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    return v0
.end method

.method public whitelist getEmergencyUrns()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1240
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .registers 2

    .line 935
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    return-object v0
.end method

.method public whitelist getProprietaryCallExtras()Landroid/os/Bundle;
    .registers 3

    .line 923
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 924
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 926
    :cond_a
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 927
    if-nez v0, :cond_1a

    .line 928
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 931
    :cond_1a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public whitelist getRestrictCause()I
    .registers 2

    .line 910
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    return v0
.end method

.method public whitelist getServiceType()I
    .registers 2

    .line 898
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    return v0
.end method

.method public whitelist hasKnownUserIntentEmergency()Z
    .registers 2

    .line 1274
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    return v0
.end method

.method public whitelist isEmergencyCallTesting()Z
    .registers 2

    .line 1262
    iget-boolean v0, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    return v0
.end method

.method public whitelist isVideoCall()Z
    .registers 2

    .line 1074
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-static {v0}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromCallType(I)I

    move-result v0

    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isVideoPaused()Z
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v0, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist setAcceptedRtpHeaderExtensionTypes(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtensionType;",
            ">;)V"
        }
    .end annotation

    .line 1302
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1303
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1304
    return-void
.end method

.method public whitelist setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 745
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 746
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraBoolean(Ljava/lang/String;Z)V
    .registers 4

    .line 751
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 752
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 754
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraInt(Ljava/lang/String;I)V
    .registers 4

    .line 757
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 758
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 760
    :cond_9
    return-void
.end method

.method public whitelist setCallExtraParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 4

    .line 772
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    .line 773
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 775
    :cond_9
    return-void
.end method

.method public whitelist setCallRestrictCause(I)V
    .registers 2

    .line 782
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 783
    return-void
.end method

.method public whitelist setCallerNumberVerificationStatus(I)V
    .registers 2

    .line 814
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    .line 815
    return-void
.end method

.method public blacklist setEmergencyCallInfo(Landroid/telephony/emergency/EmergencyNumber;Z)V
    .registers 4

    .line 1124
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyServiceCategoryBitmaskInternalDial()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyServiceCategories(I)V

    .line 1125
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyUrns()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyUrns(Ljava/util/List;)V

    .line 1126
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyCallRouting()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallRouting(I)V

    .line 1127
    invoke-virtual {p1}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsCallProfile;->setEmergencyCallTesting(Z)V

    .line 1129
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsCallProfile;->setHasKnownUserIntentEmergency(Z)V

    .line 1130
    return-void
.end method

.method public whitelist setEmergencyCallRouting(I)V
    .registers 2

    .line 1182
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    .line 1183
    return-void
.end method

.method public whitelist setEmergencyCallTesting(Z)V
    .registers 2

    .line 1191
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    .line 1192
    return-void
.end method

.method public whitelist setEmergencyServiceCategories(I)V
    .registers 2

    .line 1154
    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    .line 1155
    return-void
.end method

.method public whitelist setEmergencyUrns(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1166
    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    .line 1167
    return-void
.end method

.method public whitelist setHasKnownUserIntentEmergency(Z)V
    .registers 2

    .line 1204
    iput-boolean p1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    .line 1205
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ serviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 832
    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3c

    :cond_3a
    const-string v1, "null"

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyServiceCategories="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyUrns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallRouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergencyCallTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasKnownUserIntentEmergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestrictCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCallerNumberVerstat= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAcceptedRtpHeaderExtensions= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 829
    return-object v0
.end method

.method public whitelist updateCallExtras(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 3

    .line 790
    iget-object v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 791
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 792
    return-void
.end method

.method public whitelist updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    .line 786
    iget p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    iput p1, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 787
    return-void
.end method

.method public whitelist updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .registers 2

    .line 800
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput-object p1, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 801
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 851
    iget-object p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Landroid/telephony/ims/ImsCallProfile;->maybeCleanseExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    .line 852
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 855
    iget-object p2, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 856
    iget p2, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyServiceCategories:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object p2, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyUrns:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 858
    iget p2, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallRouting:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-boolean p2, p0, Landroid/telephony/ims/ImsCallProfile;->mEmergencyCallTesting:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 860
    iget-boolean p2, p0, Landroid/telephony/ims/ImsCallProfile;->mHasKnownUserIntentEmergency:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    iget p2, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget p2, p0, Landroid/telephony/ims/ImsCallProfile;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget-object p2, p0, Landroid/telephony/ims/ImsCallProfile;->mAcceptedRtpHeaderExtensionTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArray([Ljava/lang/Object;)V

    .line 864
    return-void
.end method
