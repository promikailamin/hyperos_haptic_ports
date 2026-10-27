.class public Landroid/hardware/biometrics/PromptInfo;
.super Ljava/lang/Object;
.source "PromptInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/PromptInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAllowBackgroundAuthentication:Z

.field private blacklist mAllowedSensorIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAuthenticators:I

.field private blacklist mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

.field private blacklist mConfirmationRequested:Z

.field private blacklist mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

.field private blacklist mDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialAllowed:Z

.field private blacklist mDeviceCredentialDescription:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

.field private blacklist mDeviceCredentialTitle:Ljava/lang/CharSequence;

.field private blacklist mDisallowBiometricsIfPolicyExists:Z

.field private blacklist mFallbackOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/FallbackOption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIdentityCheckActive:Z

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsForLegacyFingerprintManager:Z

.field private blacklist mLogoBitmap:Landroid/graphics/Bitmap;

.field private blacklist mLogoDescription:Ljava/lang/String;

.field private blacklist mLogoRes:I

.field private blacklist mNegativeButtonText:Ljava/lang/CharSequence;

.field private blacklist mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

.field private blacklist mReceiveSystemEvents:Z

.field private blacklist mShowEmergencyCallButton:Z

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private blacklist mUseDefaultSubtitle:Z

.field private blacklist mUseDefaultTitle:Z

.field private blacklist mUseParentProfileForDeviceCredential:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/hardware/biometrics/PromptInfo$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/PromptInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/PromptInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 60
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 61
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 62
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 64
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 68
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 60
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 61
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 62
    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 64
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    .line 72
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 79
    const-class v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 91
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 98
    const-class v0, Landroid/content/ComponentName;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->addFallback()Z

    move-result v0

    if-eqz v0, :cond_f6

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    sget-object v1, Landroid/hardware/biometrics/FallbackOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 104
    iput-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    .line 106
    :cond_f6
    return-void
.end method


# virtual methods
.method public blacklist addFallbackOption(Landroid/hardware/biometrics/FallbackOption;)V
    .registers 3

    .line 507
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllowedSensorIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getAuthenticators()I
    .registers 2

    .line 455
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    return v0
.end method

.method public blacklist getClassNameIfItIsConfirmDeviceCredentialActivity()Ljava/lang/String;
    .registers 2

    .line 496
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentView()Landroid/hardware/biometrics/PromptContentView;
    .registers 2

    .line 416
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 407
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 424
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getDeviceCredentialTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getFallbackOptions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/FallbackOption;",
            ">;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLogo()Landroid/graphics/Bitmap;
    .registers 2

    .line 366
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getLogoBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 383
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public blacklist getLogoDescription()Ljava/lang/String;
    .registers 2

    .line 387
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLogoRes()I
    .registers 2

    .line 374
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    return v0
.end method

.method public blacklist getNegativeButtonText()Ljava/lang/CharSequence;
    .registers 2

    .line 432
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getRealCallerForConfirmDeviceCredentialActivity()Landroid/content/ComponentName;
    .registers 2

    .line 488
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 399
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isAllowBackgroundAuthentication()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    return v0
.end method

.method public blacklist isConfirmationRequested()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    return v0
.end method

.method public blacklist isContentViewMoreOptionsButtonUsed()Z
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    instance-of v0, v0, Landroid/hardware/biometrics/PromptContentViewWithMoreOptionsButton;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isDeviceCredentialAllowed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    return v0
.end method

.method public blacklist isDisallowBiometricsIfPolicyExists()Z
    .registers 2

    .line 459
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    return v0
.end method

.method public blacklist isForLegacyFingerprintManager()Z
    .registers 2

    .line 480
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    return v0
.end method

.method public blacklist isIdentityCheckActive()Z
    .registers 2

    .line 451
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    return v0
.end method

.method public blacklist isIgnoreEnrollmentState()Z
    .registers 2

    .line 476
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    return v0
.end method

.method public blacklist isReceiveSystemEvents()Z
    .registers 2

    .line 463
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    return v0
.end method

.method public blacklist isShowEmergencyCallButton()Z
    .registers 2

    .line 484
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    return v0
.end method

.method public blacklist isUseDefaultSubtitle()Z
    .registers 2

    .line 403
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    return v0
.end method

.method public blacklist isUseDefaultTitle()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    return v0
.end method

.method public blacklist requiresAdvancedPermission()Z
    .registers 4

    .line 207
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 208
    return v1

    .line 209
    :cond_6
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    .line 210
    return v1

    .line 211
    :cond_b
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 212
    return v1

    .line 213
    :cond_10
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->isContentViewMoreOptionsButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 214
    return v1

    .line 215
    :cond_1b
    iget v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-eqz v0, :cond_23

    .line 216
    return v1

    .line 218
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresInternalPermission()Z
    .registers 3

    .line 182
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 183
    return v1

    .line 184
    :cond_6
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    if-eqz v0, :cond_b

    .line 185
    return v1

    .line 186
    :cond_b
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    if-eqz v0, :cond_10

    .line 187
    return v1

    .line 188
    :cond_10
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 189
    return v1

    .line 190
    :cond_15
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 191
    return v1

    .line 192
    :cond_1a
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    .line 193
    return v1

    .line 194
    :cond_1f
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    if-eqz v0, :cond_24

    .line 195
    return v1

    .line 197
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requiresTestOrInternalPermission()Z
    .registers 4

    .line 161
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_13

    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-nez v0, :cond_13

    .line 164
    return v1

    .line 165
    :cond_13
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 166
    return v2

    .line 167
    :cond_1c
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_21

    .line 168
    return v2

    .line 169
    :cond_21
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    if-eqz v0, :cond_26

    .line 170
    return v2

    .line 171
    :cond_26
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    if-eqz v0, :cond_2b

    .line 172
    return v2

    .line 173
    :cond_2b
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    if-eqz v0, :cond_30

    .line 174
    return v2

    .line 175
    :cond_30
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_35

    .line 176
    return v2

    .line 178
    :cond_35
    return v1
.end method

.method public blacklist setAllowBackgroundAuthentication(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    .line 327
    return-void
.end method

.method public blacklist setAllowedSensorIds(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 322
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 323
    return-void
.end method

.method public blacklist setAuthenticators(I)V
    .registers 2

    .line 309
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    .line 310
    return-void
.end method

.method blacklist setClassNameIfItIsConfirmDeviceCredentialActivity(Ljava/lang/String;)V
    .registers 2

    .line 356
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public blacklist setConfirmationRequested(Z)V
    .registers 2

    .line 297
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    .line 298
    return-void
.end method

.method public blacklist setContentView(Landroid/hardware/biometrics/PromptContentView;)V
    .registers 2

    .line 277
    check-cast p1, Landroid/hardware/biometrics/PromptContentViewParcelable;

    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    .line 278
    return-void
.end method

.method public blacklist setDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 273
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    .line 274
    return-void
.end method

.method public blacklist setDeviceCredentialAllowed(Z)V
    .registers 2

    .line 301
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    .line 302
    return-void
.end method

.method public blacklist setDeviceCredentialDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 289
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    .line 290
    return-void
.end method

.method public blacklist setDeviceCredentialSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 285
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    .line 286
    return-void
.end method

.method public blacklist setDeviceCredentialTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 281
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    .line 282
    return-void
.end method

.method public blacklist setDisallowBiometricsIfPolicyExists(Z)V
    .registers 2

    .line 313
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    .line 314
    return-void
.end method

.method public blacklist setIdentityCheckActive(Z)V
    .registers 2

    .line 305
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    .line 306
    return-void
.end method

.method public blacklist setIgnoreEnrollmentState(Z)V
    .registers 2

    .line 330
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    .line 331
    return-void
.end method

.method public blacklist setIsForLegacyFingerprintManager(I)V
    .registers 3

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    .line 335
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    iget-object v0, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public blacklist setLogo(ILandroid/graphics/Bitmap;)V
    .registers 3

    .line 248
    iput p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    .line 249
    iput-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    .line 250
    return-void
.end method

.method public blacklist setLogoDescription(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public blacklist setNegativeButtonText(Ljava/lang/CharSequence;)V
    .registers 2

    .line 293
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 294
    return-void
.end method

.method public blacklist setRealCallerForConfirmDeviceCredentialActivity(Landroid/content/ComponentName;)V
    .registers 2

    .line 344
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    .line 345
    return-void
.end method

.method public blacklist setReceiveSystemEvents(Z)V
    .registers 2

    .line 317
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    .line 318
    return-void
.end method

.method public blacklist setShowEmergencyCallButton(Z)V
    .registers 2

    .line 340
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    .line 341
    return-void
.end method

.method public blacklist setSubtitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 265
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    .line 266
    return-void
.end method

.method public blacklist setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 257
    iput-object p1, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    .line 258
    return-void
.end method

.method public blacklist setUseDefaultSubtitle(Z)V
    .registers 2

    .line 269
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    .line 270
    return-void
.end method

.method public blacklist setUseDefaultTitle(Z)V
    .registers 2

    .line 261
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    .line 262
    return-void
.end method

.method public blacklist setUseParentProfileForDeviceCredential(Z)V
    .registers 2

    .line 349
    iput-boolean p1, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    .line 350
    return-void
.end method

.method public blacklist shouldUseParentProfileForDeviceCredential()Z
    .registers 2

    .line 225
    iget-boolean v0, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 127
    iget p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 129
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mLogoDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 131
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultTitle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 133
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mUseDefaultSubtitle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mContentView:Landroid/hardware/biometrics/PromptContentViewParcelable;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 136
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 140
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mConfirmationRequested:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDeviceCredentialAllowed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mIdentityCheckActive:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 143
    iget p2, p0, Landroid/hardware/biometrics/PromptInfo;->mAuthenticators:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mDisallowBiometricsIfPolicyExists:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 145
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mReceiveSystemEvents:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 146
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowedSensorIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 147
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mAllowBackgroundAuthentication:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 148
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mIgnoreEnrollmentState:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mIsForLegacyFingerprintManager:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mShowEmergencyCallButton:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    iget-boolean p2, p0, Landroid/hardware/biometrics/PromptInfo;->mUseParentProfileForDeviceCredential:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 152
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mRealCallerForConfirmDeviceCredentialActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mClassNameIfItIsConfirmDeviceCredentialActivity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->addFallback()Z

    move-result p2

    if-eqz p2, :cond_93

    .line 155
    iget-object p2, p0, Landroid/hardware/biometrics/PromptInfo;->mFallbackOptions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 157
    :cond_93
    return-void
.end method
