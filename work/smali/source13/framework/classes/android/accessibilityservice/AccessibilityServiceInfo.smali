.class public Landroid/accessibilityservice/AccessibilityServiceInfo;
.super Ljava/lang/Object;
.source "AccessibilityServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;,
        Landroid/accessibilityservice/AccessibilityServiceInfo$FeedbackType;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_CAN_CONTROL_MAGNIFICATION:I = 0x10

.field public static final whitelist CAPABILITY_CAN_PERFORM_GESTURES:I = 0x20

.field public static final whitelist CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x4

.field public static final whitelist CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS:I = 0x8

.field public static final whitelist CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES:I = 0x40

.field public static final whitelist CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION:I = 0x2

.field public static final whitelist CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT:I = 0x1

.field public static final whitelist CAPABILITY_CAN_TAKE_SCREENSHOT:I = 0x80

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT:I = 0x1

.field public static final whitelist FEEDBACK_ALL_MASK:I = -0x1

.field public static final whitelist FEEDBACK_AUDIBLE:I = 0x4

.field public static final whitelist FEEDBACK_BRAILLE:I = 0x20

.field public static final whitelist FEEDBACK_GENERIC:I = 0x10

.field public static final whitelist FEEDBACK_HAPTIC:I = 0x2

.field public static final whitelist FEEDBACK_SPOKEN:I = 0x1

.field public static final whitelist FEEDBACK_VISUAL:I = 0x8

.field public static final whitelist FLAG_ENABLE_ACCESSIBILITY_VOLUME:I = 0x80

.field public static final greylist-max-o FLAG_FORCE_DIRECT_BOOT_AWARE:I = 0x10000

.field public static final whitelist FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x2

.field public static final whitelist FLAG_INPUT_METHOD_EDITOR:I = 0x8000

.field public static final whitelist FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final whitelist FLAG_REQUEST_2_FINGER_PASSTHROUGH:I = 0x2000

.field public static final whitelist FLAG_REQUEST_ACCESSIBILITY_BUTTON:I = 0x100

.field public static final whitelist FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY:I = 0x8

.field public static final whitelist FLAG_REQUEST_FILTER_KEY_EVENTS:I = 0x20

.field public static final whitelist FLAG_REQUEST_FINGERPRINT_GESTURES:I = 0x200

.field public static final whitelist FLAG_REQUEST_MULTI_FINGER_GESTURES:I = 0x1000

.field public static final whitelist FLAG_REQUEST_SHORTCUT_WARNING_DIALOG_SPOKEN_FEEDBACK:I = 0x400

.field public static final whitelist FLAG_REQUEST_TOUCH_EXPLORATION_MODE:I = 0x4

.field public static final whitelist FLAG_RETRIEVE_INTERACTIVE_WINDOWS:I = 0x40

.field public static final whitelist FLAG_SEND_MOTION_EVENTS:I = 0x4000

.field public static final whitelist FLAG_SERVICE_HANDLES_DOUBLE_TAP:I = 0x800

.field private static final blacklist REQUEST_ACCESSIBILITY_BUTTON_CHANGE:J = 0x81fae4bL

.field private static final greylist-max-o TAG_ACCESSIBILITY_SERVICE:Ljava/lang/String; = "accessibility-service"

.field private static greylist-max-o sAvailableCapabilityInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-o crashed:Z

.field public whitelist eventTypes:I

.field public whitelist feedbackType:I

.field public whitelist flags:I

.field private blacklist mAnimatedImageRes:I

.field private greylist-max-o mCapabilities:I

.field private greylist-max-o mComponentName:Landroid/content/ComponentName;

.field private greylist-max-o mDescriptionResId:I

.field private blacklist mHtmlDescriptionRes:I

.field private blacklist mInteractiveUiTimeout:I

.field private blacklist mIntroResId:I

.field private blacklist mIsAccessibilityTool:Z

.field private blacklist mNonInteractiveUiTimeout:I

.field private greylist-max-o mNonLocalizedDescription:Ljava/lang/String;

.field private greylist-max-o mNonLocalizedSummary:Ljava/lang/String;

.field private greylist-max-o mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field private greylist-max-o mSummaryResId:I

.field private blacklist mTileServiceName:Ljava/lang/String;

.field public whitelist notificationTimeout:J

.field public whitelist packageNames:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1546
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo$1;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo$1;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 620
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .registers 20
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 634
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 635
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 636
    iput-object v2, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 638
    const/4 v4, 0x0

    .line 641
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 642
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    const-string v6, "android.accessibilityservice"

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_24} :catch_176
    .catchall {:try_start_1a .. :try_end_24} :catchall_174

    move-object v4, v6

    .line 644
    if-nez v4, :cond_2d

    .line 758
    if-eqz v4, :cond_2c

    .line 759
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 645
    :cond_2c
    return-void

    .line 648
    :cond_2d
    const/4 v6, 0x0

    .line 649
    .local v6, "type":I
    :goto_2e
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v8, :cond_3a

    if-eq v6, v7, :cond_3a

    .line 650
    :try_start_34
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    move v6, v7

    goto :goto_2e

    .line 653
    :cond_3a
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 654
    .local v9, "nodeName":Ljava/lang/String;
    const-string v10, "accessibility-service"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16c

    .line 659
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 660
    .local v10, "allAttributes":Landroid/util/AttributeSet;
    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 662
    .local v11, "resources":Landroid/content/res/Resources;
    sget-object v12, Lcom/android/internal/R$styleable;->AccessibilityService:[I

    invoke-virtual {v11, v10, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 664
    .local v12, "asAttributes":Landroid/content/res/TypedArray;
    const/4 v13, 0x3

    invoke-virtual {v12, v13, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 667
    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 669
    .local v13, "packageNamez":Ljava/lang/String;
    if-eqz v13, :cond_6c

    .line 670
    const-string v14, "(\\s)*,(\\s)*"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 672
    :cond_6c
    const/4 v14, 0x5

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 675
    const/4 v14, 0x6

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    int-to-long v14, v14

    iput-wide v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 678
    const/16 v14, 0xf

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 681
    const/16 v14, 0x10

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 684
    const/4 v15, 0x7

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    iput v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 686
    invoke-virtual {v12, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 688
    const/16 v15, 0x8

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_a5

    .line 690
    iget v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v14, v8

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 692
    :cond_a5
    const/16 v14, 0x9

    invoke-virtual {v12, v14, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    if-eqz v14, :cond_b2

    .line 694
    iget v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v7, v14

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 696
    :cond_b2
    const/16 v7, 0xb

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 698
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/2addr v7, v15

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 700
    :cond_bf
    const/16 v7, 0xc

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_ce

    .line 702
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    const/16 v14, 0x10

    or-int/2addr v7, v14

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 704
    :cond_ce
    const/16 v7, 0xd

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_dc

    .line 706
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v7, v7, 0x20

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 708
    :cond_dc
    const/16 v7, 0xe

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_ea

    .line 710
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit8 v7, v7, 0x40

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 712
    :cond_ea
    const/16 v7, 0x13

    invoke-virtual {v12, v7, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 714
    iget v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    or-int/lit16 v7, v7, 0x80

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 716
    :cond_f8
    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 718
    .local v7, "peekedValue":Landroid/util/TypedValue;
    if-eqz v7, :cond_112

    .line 719
    iget v14, v7, Landroid/util/TypedValue;->resourceId:I

    iput v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 720
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    .line 721
    .local v14, "nonLocalizedDescription":Ljava/lang/CharSequence;
    if-eqz v14, :cond_112

    .line 722
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 725
    .end local v14    # "nonLocalizedDescription":Ljava/lang/CharSequence;
    :cond_112
    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 727
    if-eqz v7, :cond_12d

    .line 728
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 729
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    .line 730
    .local v8, "nonLocalizedSummary":Ljava/lang/CharSequence;
    if-eqz v8, :cond_12d

    .line 731
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 734
    .end local v8    # "nonLocalizedSummary":Ljava/lang/CharSequence;
    :cond_12d
    const/16 v8, 0x11

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 736
    if-eqz v7, :cond_13a

    .line 737
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    .line 739
    :cond_13a
    const/16 v8, 0x12

    invoke-virtual {v12, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    move-object v7, v8

    .line 741
    if-eqz v7, :cond_147

    .line 742
    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    .line 744
    :cond_147
    const/16 v8, 0x14

    invoke-virtual {v12, v8, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 746
    const/16 v0, 0x15

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    .line 748
    const/16 v0, 0x16

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 750
    .end local v7    # "peekedValue":Landroid/util/TypedValue;
    .local v0, "peekedValue":Landroid/util/TypedValue;
    if-eqz v0, :cond_163

    .line 751
    iget v7, v0, Landroid/util/TypedValue;->resourceId:I

    iput v7, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    .line 753
    :cond_163
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_166
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_166} :catch_176
    .catchall {:try_start_34 .. :try_end_166} :catchall_174

    .line 758
    .end local v0    # "peekedValue":Landroid/util/TypedValue;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "type":I
    .end local v9    # "nodeName":Ljava/lang/String;
    .end local v10    # "allAttributes":Landroid/util/AttributeSet;
    .end local v11    # "resources":Landroid/content/res/Resources;
    .end local v12    # "asAttributes":Landroid/content/res/TypedArray;
    .end local v13    # "packageNamez":Ljava/lang/String;
    if-eqz v4, :cond_16b

    .line 759
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 762
    :cond_16b
    return-void

    .line 655
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "type":I
    .restart local v9    # "nodeName":Ljava/lang/String;
    :cond_16c
    :try_start_16c
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v7, "Meta-data does not start withaccessibility-service tag"

    invoke-direct {v0, v7}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p2    # "context":Landroid/content/Context;
    throw v0
    :try_end_174
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16c .. :try_end_174} :catch_176
    .catchall {:try_start_16c .. :try_end_174} :catchall_174

    .line 758
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "type":I
    .end local v9    # "nodeName":Ljava/lang/String;
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_174
    move-exception v0

    goto :goto_192

    .line 754
    :catch_176
    move-exception v0

    .line 755
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_177
    new-instance v5, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create context for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p2    # "context":Landroid/content/Context;
    throw v5
    :try_end_192
    .catchall {:try_start_177 .. :try_end_192} :catchall_174

    .line 758
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v4    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .restart local p1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2    # "context":Landroid/content/Context;
    :goto_192
    if-eqz v4, :cond_197

    .line 759
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 761
    :cond_197
    throw v0
.end method

.method private static greylist-max-o appendCapabilities(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "capabilities"    # I

    .line 1308
    const-string v0, "capabilities:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    :goto_a
    if-eqz p1, :cond_23

    .line 1311
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1312
    .local v0, "capabilityBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->capabilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1314
    if-eqz p1, :cond_22

    .line 1315
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1317
    .end local v0    # "capabilityBit":I
    :cond_22
    goto :goto_a

    .line 1318
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    return-void
.end method

.method private static greylist-max-o appendEventTypes(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "eventTypes"    # I

    .line 1280
    const-string v0, "eventTypes:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1281
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    :goto_a
    if-eqz p1, :cond_23

    .line 1283
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1284
    .local v0, "eventTypeBit":I
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1286
    if-eqz p1, :cond_22

    .line 1287
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    .end local v0    # "eventTypeBit":I
    :cond_22
    goto :goto_a

    .line 1290
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    return-void
.end method

.method private static greylist-max-o appendFeedbackTypes(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "feedbackTypes"    # I

    .line 1251
    const-string v0, "feedbackTypes:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    :goto_a
    if-eqz p1, :cond_23

    .line 1254
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1255
    .local v0, "feedbackTypeBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1257
    if-eqz p1, :cond_22

    .line 1258
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .end local v0    # "feedbackTypeBit":I
    :cond_22
    goto :goto_a

    .line 1261
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    return-void
.end method

.method private static greylist-max-o appendFlags(Ljava/lang/StringBuilder;I)V
    .registers 4
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "flags"    # I

    .line 1294
    const-string v0, "flags:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    :goto_a
    if-eqz p1, :cond_23

    .line 1297
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shl-int/2addr v0, v1

    .line 1298
    .local v0, "flagBit":I
    invoke-static {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->flagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1299
    not-int v1, v0

    and-int/2addr p1, v1

    .line 1300
    if-eqz p1, :cond_22

    .line 1301
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    .end local v0    # "flagBit":I
    :cond_22
    goto :goto_a

    .line 1304
    :cond_23
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    return-void
.end method

.method private static greylist-max-o appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 5
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "packageNames"    # [Ljava/lang/String;

    .line 1265
    const-string/jumbo v0, "packageNames:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    if-eqz p1, :cond_22

    .line 1268
    array-length v0, p1

    .line 1269
    .local v0, "packageNameCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 1270
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1f

    .line 1272
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1276
    .end local v0    # "packageNameCount":I
    .end local v1    # "i":I
    :cond_22
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    return-void
.end method

.method public static whitelist capabilityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I

    .line 1432
    sparse-switch p0, :sswitch_data_1e

    .line 1450
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1448
    :sswitch_6
    const-string v0, "CAPABILITY_CAN_TAKE_SCREENSHOT"

    return-object v0

    .line 1446
    :sswitch_9
    const-string v0, "CAPABILITY_CAN_REQUEST_FINGERPRINT_GESTURES"

    return-object v0

    .line 1444
    :sswitch_c
    const-string v0, "CAPABILITY_CAN_PERFORM_GESTURES"

    return-object v0

    .line 1442
    :sswitch_f
    const-string v0, "CAPABILITY_CAN_CONTROL_MAGNIFICATION"

    return-object v0

    .line 1440
    :sswitch_12
    const-string v0, "CAPABILITY_CAN_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 1438
    :sswitch_15
    const-string v0, "CAPABILITY_CAN_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 1436
    :sswitch_18
    const-string v0, "CAPABILITY_CAN_REQUEST_TOUCH_EXPLORATION"

    return-object v0

    .line 1434
    :sswitch_1b
    const-string v0, "CAPABILITY_CAN_RETRIEVE_WINDOW_CONTENT"

    return-object v0

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1b
        0x2 -> :sswitch_18
        0x4 -> :sswitch_15
        0x8 -> :sswitch_12
        0x10 -> :sswitch_f
        0x20 -> :sswitch_c
        0x40 -> :sswitch_9
        0x80 -> :sswitch_6
    .end sparse-switch
.end method

.method public static whitelist feedbackTypeToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "feedbackType"    # I

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1330
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :goto_a
    if-eqz p0, :cond_76

    .line 1332
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    .line 1333
    .local v1, "feedbackTypeFlag":I
    not-int v3, v1

    and-int/2addr p0, v3

    .line 1334
    const-string v3, ", "

    sparse-switch v1, :sswitch_data_80

    goto :goto_75

    .line 1366
    :sswitch_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_24

    .line 1367
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    :cond_24
    const-string v2, "FEEDBACK_BRAILLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 1348
    :sswitch_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_33

    .line 1349
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    :cond_33
    const-string v2, "FEEDBACK_GENERIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    goto :goto_75

    .line 1360
    :sswitch_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_42

    .line 1361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_42
    const-string v2, "FEEDBACK_VISUAL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    goto :goto_75

    .line 1336
    :sswitch_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_51

    .line 1337
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    :cond_51
    const-string v2, "FEEDBACK_AUDIBLE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    goto :goto_75

    .line 1342
    :sswitch_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_60

    .line 1343
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    :cond_60
    const-string v2, "FEEDBACK_HAPTIC"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    goto :goto_75

    .line 1354
    :sswitch_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v2, :cond_6f

    .line 1355
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    :cond_6f
    const-string v2, "FEEDBACK_SPOKEN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    nop

    .line 1372
    .end local v1    # "feedbackTypeFlag":I
    :goto_75
    goto :goto_a

    .line 1373
    :cond_76
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_66
        0x2 -> :sswitch_57
        0x4 -> :sswitch_48
        0x8 -> :sswitch_39
        0x10 -> :sswitch_2a
        0x20 -> :sswitch_1b
    .end sparse-switch
.end method

.method private static greylist-max-o fingerprintAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1525
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1526
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 1525
    :goto_1d
    return v0
.end method

.method public static whitelist flagToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "flag"    # I

    .line 1385
    sparse-switch p0, :sswitch_data_36

    .line 1419
    const/4 v0, 0x0

    return-object v0

    .line 1417
    :sswitch_5
    const-string v0, "FLAG_INPUT_METHOD_EDITOR"

    return-object v0

    .line 1399
    :sswitch_8
    const-string v0, "FLAG_SEND_MOTION_EVENTS"

    return-object v0

    .line 1397
    :sswitch_b
    const-string v0, "FLAG_REQUEST_2_FINGER_PASSTHROUGH"

    return-object v0

    .line 1395
    :sswitch_e
    const-string v0, "FLAG_REQUEST_MULTI_FINGER_GESTURES"

    return-object v0

    .line 1393
    :sswitch_11
    const-string v0, "FLAG_SERVICE_HANDLES_DOUBLE_TAP"

    return-object v0

    .line 1415
    :sswitch_14
    const-string v0, "FLAG_REQUEST_SHORTCUT_WARNING_DIALOG_SPOKEN_FEEDBACK"

    return-object v0

    .line 1413
    :sswitch_17
    const-string v0, "FLAG_REQUEST_FINGERPRINT_GESTURES"

    return-object v0

    .line 1411
    :sswitch_1a
    const-string v0, "FLAG_REQUEST_ACCESSIBILITY_BUTTON"

    return-object v0

    .line 1409
    :sswitch_1d
    const-string v0, "FLAG_ENABLE_ACCESSIBILITY_VOLUME"

    return-object v0

    .line 1407
    :sswitch_20
    const-string v0, "FLAG_RETRIEVE_INTERACTIVE_WINDOWS"

    return-object v0

    .line 1405
    :sswitch_23
    const-string v0, "FLAG_REQUEST_FILTER_KEY_EVENTS"

    return-object v0

    .line 1403
    :sswitch_26
    const-string v0, "FLAG_REPORT_VIEW_IDS"

    return-object v0

    .line 1401
    :sswitch_29
    const-string v0, "FLAG_REQUEST_ENHANCED_WEB_ACCESSIBILITY"

    return-object v0

    .line 1391
    :sswitch_2c
    const-string v0, "FLAG_REQUEST_TOUCH_EXPLORATION_MODE"

    return-object v0

    .line 1389
    :sswitch_2f
    const-string v0, "FLAG_INCLUDE_NOT_IMPORTANT_VIEWS"

    return-object v0

    .line 1387
    :sswitch_32
    const-string v0, "DEFAULT"

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_2f
        0x4 -> :sswitch_2c
        0x8 -> :sswitch_29
        0x10 -> :sswitch_26
        0x20 -> :sswitch_23
        0x40 -> :sswitch_20
        0x80 -> :sswitch_1d
        0x100 -> :sswitch_1a
        0x200 -> :sswitch_17
        0x400 -> :sswitch_14
        0x800 -> :sswitch_11
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_5
    .end sparse-switch
.end method

.method private static greylist-max-o getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1488
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    if-nez v0, :cond_8d

    .line 1489
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    .line 1490
    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401fb

    const v3, 0x10401f3

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1494
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401fa

    const v3, 0x10401f2

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1498
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401f9

    const v3, 0x10401f1

    const/16 v4, 0x8

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1502
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401f6

    const v3, 0x10401ee

    const/16 v4, 0x10

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1506
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401f7

    const v3, 0x10401ef

    const/16 v4, 0x20

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1510
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401fc

    const v3, 0x10401f4

    const/16 v4, 0x80

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1514
    if-eqz p0, :cond_7b

    invoke-static {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->fingerprintAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1515
    :cond_7b
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    new-instance v1, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    const v2, 0x10401f5

    const v3, 0x10401ed

    const/16 v4, 0x40

    invoke-direct {v1, v4, v2, v3}, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;-><init>(III)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1521
    :cond_8d
    sget-object v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->sAvailableCapabilityInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 1166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    .line 1174
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 1175
    const/4 v0, 0x0

    const-class v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    .line 1179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    .line 1187
    return-void
.end method

.method private blacklist isRequestAccessibilityButtonChangeEnabled(Lcom/android/internal/compat/IPlatformCompat;)Z
    .registers 6
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;

    .line 792
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 793
    return v1

    .line 796
    :cond_6
    if-eqz p1, :cond_16

    .line 797
    const-wide/32 v2, 0x81fae4b

    :try_start_b
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {p1, v2, v3, v0}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 800
    :catch_14
    move-exception v0

    goto :goto_17

    .line 801
    :cond_16
    nop

    .line 802
    :goto_17
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1d

    if-le v0, v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1129
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1196
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1197
    return v0

    .line 1199
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1200
    return v1

    .line 1202
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1203
    return v1

    .line 1205
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1206
    .local v2, "other":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_1f

    .line 1207
    iget-object v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_28

    .line 1208
    return v1

    .line 1210
    :cond_1f
    iget-object v4, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1211
    return v1

    .line 1213
    :cond_28
    return v0
.end method

.method public blacklist getAnimatedImageRes()I
    .registers 2

    .line 874
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    return v0
.end method

.method public whitelist getCanRetrieveWindowContent()Z
    .registers 3

    .line 910
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getCapabilities()I
    .registers 2

    .line 927
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    return v0
.end method

.method public greylist-max-o getCapabilityInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getCapabilityInfos(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;",
            ">;"
        }
    .end annotation

    .line 1469
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    if-nez v0, :cond_9

    .line 1470
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1472
    :cond_9
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 1473
    .local v0, "capabilities":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    .local v1, "capabilityInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    nop

    .line 1475
    invoke-static {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfoSparseArray(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    .line 1476
    .local v2, "capabilityInfoSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    :goto_15
    if-eqz v0, :cond_2b

    .line 1477
    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shl-int/2addr v3, v4

    .line 1478
    .local v3, "capabilityBit":I
    not-int v4, v3

    and-int/2addr v0, v4

    .line 1479
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 1480
    .local v4, "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    if-eqz v4, :cond_2a

    .line 1481
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    .end local v3    # "capabilityBit":I
    .end local v4    # "capabilityInfo":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_2a
    goto :goto_15

    .line 1484
    :cond_2b
    return-object v1
.end method

.method public greylist-max-o getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 818
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 1006
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 829
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getInteractiveUiTimeoutMillis()I
    .registers 2

    .line 1107
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    return v0
.end method

.method public whitelist getNonInteractiveUiTimeoutMillis()I
    .registers 2

    .line 1080
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    return v0
.end method

.method public whitelist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .registers 2

    .line 840
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public whitelist getSettingsActivityName()Ljava/lang/String;
    .registers 2

    .line 852
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTileServiceName()Ljava/lang/String;
    .registers 2

    .line 863
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1191
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public whitelist isAccessibilityTool()Z
    .registers 2

    .line 1122
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    return v0
.end method

.method public greylist-max-o isDirectBootAware()Z
    .registers 3

    .line 1112
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public final blacklist isWithinParcelableSize()Z
    .registers 5

    .line 1134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1135
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1136
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    const/high16 v3, 0x10000

    if-gt v2, v3, :cond_11

    const/4 v1, 0x1

    .line 1137
    .local v1, "result":Z
    :cond_11
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1138
    return v1
.end method

.method public blacklist loadAnimatedImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 891
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    if-nez v0, :cond_6

    .line 892
    const/4 v0, 0x0

    return-object v0

    .line 895
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    invoke-static {p1, v0, v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->loadSafeAnimatedImage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1018
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    if-nez v0, :cond_7

    .line 1019
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    return-object v0

    .line 1021
    :cond_7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1022
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1024
    .local v1, "description":Ljava/lang/CharSequence;
    if-eqz v1, :cond_20

    .line 1025
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1027
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist loadHtmlDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 1043
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1044
    return-object v1

    .line 1047
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1048
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1050
    .local v2, "htmlDescription":Ljava/lang/CharSequence;
    if-eqz v2, :cond_23

    .line 1051
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/util/AccessibilityUtils;->getFilteredHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1053
    :cond_23
    return-object v1
.end method

.method public whitelist loadIntro(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 983
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 984
    return-object v1

    .line 986
    :cond_6
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 987
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 989
    .local v2, "intro":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1f

    .line 990
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 992
    :cond_1f
    return-object v1
.end method

.method public whitelist loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 960
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    if-nez v0, :cond_7

    .line 961
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    return-object v0

    .line 963
    :cond_7
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 964
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 966
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_20

    .line 967
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 969
    :cond_20
    const/4 v2, 0x0

    return-object v2
.end method

.method public greylist-max-r setCapabilities(I)V
    .registers 2
    .param p1, "capabilities"    # I

    .line 947
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    .line 948
    return-void
.end method

.method public greylist-max-o setComponentName(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 809
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 810
    return-void
.end method

.method public whitelist setInteractiveUiTimeoutMillis(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 1096
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 1097
    return-void
.end method

.method public whitelist setNonInteractiveUiTimeoutMillis(I)V
    .registers 2
    .param p1, "timeout"    # I

    .line 1069
    iput p1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 1070
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendEventTypes(Ljava/lang/StringBuilder;I)V

    .line 1220
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendPackageNames(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFeedbackTypes(Ljava/lang/StringBuilder;I)V

    .line 1224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string/jumbo v2, "notificationTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    const-string/jumbo v2, "nonInteractiveUiTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    const-string v2, "interactiveUiTimeout: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    iget v2, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-static {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendFlags(Ljava/lang/StringBuilder;I)V

    .line 1232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    const-string v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string/jumbo v2, "resolveInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1236
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    const-string/jumbo v2, "settingsActivityName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    const-string/jumbo v2, "tileServiceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    const-string/jumbo v2, "summary: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    const-string v2, "isAccessibilityTool: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->appendCapabilities(Ljava/lang/StringBuilder;I)V

    .line 1246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateDynamicallyConfigurableProperties(Lcom/android/internal/compat/IPlatformCompat;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 5
    .param p1, "platformCompat"    # Lcom/android/internal/compat/IPlatformCompat;
    .param p2, "other"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 778
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isRequestAccessibilityButtonChangeEnabled(Lcom/android/internal/compat/IPlatformCompat;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 779
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 780
    iget v1, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v1, v1, 0x100

    or-int/2addr v0, v1

    iput v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 782
    :cond_13
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 783
    iget-object v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 784
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 785
    iget-wide v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    iput-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 786
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    .line 787
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    .line 788
    iget v0, p2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    iput v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 789
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flagz"    # I

    .line 1142
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1144
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1145
    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1146
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonInteractiveUiTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mInteractiveUiTimeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1149
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->crashed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1150
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1151
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1152
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1153
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mSummaryResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1155
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1156
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mDescriptionResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mAnimatedImageRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1158
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mHtmlDescriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mNonLocalizedDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    iget-boolean v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIsAccessibilityTool:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1161
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mTileServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1162
    iget v0, p0, Landroid/accessibilityservice/AccessibilityServiceInfo;->mIntroResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    return-void
.end method
