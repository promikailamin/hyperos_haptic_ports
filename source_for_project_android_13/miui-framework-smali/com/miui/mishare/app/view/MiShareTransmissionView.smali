.class public Lcom/miui/mishare/app/view/MiShareTransmissionView;
.super Landroid/widget/LinearLayout;
.source "MiShareTransmissionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;
.implements Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;,
        Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;,
        Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;
    }
.end annotation


# static fields
.field private static final blacklist EXTRA_MISHARE_APK_PACKAGE_NAME:Ljava/lang/String; = "com.miui.mishare.extra.MISHARE_APK_PACKAGE_NAME"

.field private static final blacklist MI_APP_STORE_AUTHORITY:Ljava/lang/String; = "com.xiaomi.market.fileprovider"

.field private static final blacklist PRINT_ACTION:Ljava/lang/String; = "com.miui.mishare.action.PRINT_CONTROL"

.field private static final blacklist SETTINGS_NAME_SCREEN_PROJECT_IN_SCREENING:Ljava/lang/String; = "screen_project_in_screening"

.field private static final blacklist TAG:Ljava/lang/String; = "MiShareTransmissionView"


# instance fields
.field private blacklist mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

.field private blacklist mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

.field private blacklist mContentFilled:Z

.field private blacklist mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

.field private blacklist mDeviceLv:Lcom/android/internal/widget/RecyclerView;

.field private final blacklist mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

.field private blacklist mDiscovering:Z

.field private blacklist mEnableMiShareView:Landroid/view/View;

.field private blacklist mFileTypeContainer:Landroid/view/ViewGroup;

.field private blacklist mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsScreenThrowConnected:Z

.field private blacklist mMiPrintClick:Landroid/view/View$OnClickListener;

.field private blacklist mMiShareDisabled:Landroid/view/View;

.field private blacklist mPrintBtn:Landroid/widget/ImageButton;

.field blacklist mReBindRunable:Ljava/lang/Runnable;

.field private blacklist mScreenThrow:Landroid/widget/ImageButton;

.field private blacklist mScreenThrowClick:Landroid/view/View$OnClickListener;

.field private blacklist mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

.field private blacklist mSecurityShareView:Landroid/widget/TextView;

.field private blacklist mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

.field private blacklist mState:I

.field private blacklist mStateListener:Lcom/miui/mishare/IMiShareStateListener;

.field private final blacklist mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

.field private blacklist mTipsTv:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapter(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectivity(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/miui/mishare/app/connect/MiShareConnectivity;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceLv(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Lcom/android/internal/widget/RecyclerView;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFiles(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsScreenThrowConnected(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMiShareDisabled(Lcom/miui/mishare/app/view/MiShareTransmissionView;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Lcom/miui/mishare/app/view/MiShareTransmissionView;)I
    .registers 1

    iget p0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsScreenThrowConnected(Lcom/miui/mishare/app/view/MiShareTransmissionView;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)V
    .registers 2

    iput p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDeviceType(Lcom/miui/mishare/app/view/MiShareTransmissionView;B)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getDeviceType(B)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrefreshView(Lcom/miui/mishare/app/view/MiShareTransmissionView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->refreshView(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmptyView(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setEmptyView()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 109
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    .line 224
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    .line 891
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    .line 1001
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    .line 1040
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mReBindRunable:Ljava/lang/Runnable;

    .line 110
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V

    .line 111
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    .line 103
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    .line 211
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$2;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    .line 224
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$3;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    .line 891
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$5;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    .line 1001
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$6;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    .line 1040
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;

    invoke-direct {v0, p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$7;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mReBindRunable:Ljava/lang/Runnable;

    .line 115
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->init()V

    .line 116
    return-void
.end method

.method private blacklist addType2Container(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 500
    if-eqz p1, :cond_7

    .line 501
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 503
    :cond_7
    return-void
.end method

.method private blacklist canPrint()Z
    .registers 5

    .line 830
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_37

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    .line 833
    :cond_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 834
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 835
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_33
    move v1, v2

    goto :goto_36

    :cond_35
    nop

    .line 834
    :goto_36
    return v1

    .line 831
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_37
    :goto_37
    return v1
.end method

.method private blacklist convertPdfAndPrint()V
    .registers 6

    .line 805
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3e

    .line 806
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 807
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 808
    const v2, -0x7fffffff

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 810
    const-string v2, "com.android.printspooler"

    const-string v3, "com.android.printspooler.convertpdf.ConvertPdfAlertActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    const/16 v4, -0x2710

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 813
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 815
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3e
    return-void
.end method

.method private blacklist getApplicationDetail(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;
    .registers 9
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 550
    if-nez p1, :cond_c

    .line 551
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 553
    :cond_c
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 555
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 556
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 557
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 558
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    const v3, 0x110a00d8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 561
    .local v3, "singleFileNameTv":Landroid/widget/TextView;
    const v4, 0x110a00d4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 563
    .local v4, "fileCountTv":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v6, 0x5

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    return-object v0
.end method

.method private blacklist getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    .registers 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 512
    new-instance v0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;-><init>(Landroid/content/Context;)V

    .line 513
    .local v0, "icon":Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 514
    return-object v0
.end method

.method public static blacklist getClipData(Ljava/util/List;)Landroid/content/ClipData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/content/ClipData;"
        }
    .end annotation

    .line 718
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p0, :cond_42

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_9

    goto :goto_42

    .line 721
    :cond_9
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 722
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 724
    .local v1, "item":Landroid/content/ClipData$Item;
    new-instance v2, Landroid/content/ClipDescription;

    const-string v3, ""

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "mishare data"

    invoke-direct {v2, v4, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 725
    .local v2, "des":Landroid/content/ClipDescription;
    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 727
    .local v3, "data":Landroid/content/ClipData;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 728
    .local v4, "count":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2c
    if-ge v5, v4, :cond_41

    .line 729
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 730
    .local v6, "uriItem":Landroid/net/Uri;
    if-eqz v6, :cond_3e

    .line 731
    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v6}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v7}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 728
    .end local v6    # "uriItem":Landroid/net/Uri;
    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 734
    .end local v5    # "i":I
    :cond_41
    return-object v3

    .line 719
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v1    # "item":Landroid/content/ClipData$Item;
    .end local v2    # "des":Landroid/content/ClipDescription;
    .end local v3    # "data":Landroid/content/ClipData;
    .end local v4    # "count":I
    :cond_42
    :goto_42
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDeviceType(B)I
    .registers 5
    .param p1, "manufactureCode"    # B

    .line 945
    const/16 v0, 0x14

    if-lt p1, v0, :cond_a

    const/16 v0, 0x1d

    if-gt p1, v0, :cond_a

    .line 946
    const/4 v0, 0x2

    return v0

    .line 947
    :cond_a
    const/16 v0, 0xb

    const/16 v1, 0xa

    if-lt p1, v1, :cond_1a

    const/16 v2, 0x13

    if-gt p1, v2, :cond_1a

    .line 948
    if-ne p1, v0, :cond_18

    .line 949
    const/4 v0, 0x4

    return v0

    .line 951
    :cond_18
    const/4 v0, 0x3

    return v0

    .line 952
    :cond_1a
    const/16 v2, 0x32

    if-lt p1, v2, :cond_24

    const/16 v2, 0x3b

    if-gt p1, v2, :cond_24

    .line 953
    const/4 v0, 0x6

    return v0

    .line 954
    :cond_24
    const/16 v2, 0x29

    if-lt p1, v2, :cond_2e

    const/16 v2, 0x2d

    if-gt p1, v2, :cond_2e

    .line 955
    const/4 v0, 0x7

    return v0

    .line 956
    :cond_2e
    const/16 v2, 0x50

    if-lt p1, v2, :cond_39

    const/16 v2, 0x59

    if-gt p1, v2, :cond_39

    .line 957
    const/16 v0, 0x8

    return v0

    .line 958
    :cond_39
    const/16 v2, 0x3c

    if-lt p1, v2, :cond_44

    const/16 v2, 0x45

    if-gt p1, v2, :cond_44

    .line 959
    const/16 v0, 0x9

    return v0

    .line 960
    :cond_44
    const/16 v2, -0x56

    if-lt p1, v2, :cond_4d

    const/16 v2, -0x4d

    if-gt p1, v2, :cond_4d

    .line 961
    return v1

    .line 962
    :cond_4d
    const/16 v1, -0x60

    if-lt p1, v1, :cond_5b

    const/16 v2, -0x57

    if-gt p1, v2, :cond_5b

    .line 963
    if-ne p1, v1, :cond_5a

    .line 964
    const/16 v0, 0xc

    return v0

    .line 966
    :cond_5a
    return v0

    .line 967
    :cond_5b
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_66

    const/16 v0, 0x5f

    if-gt p1, v0, :cond_66

    .line 968
    const/16 v0, 0xd

    return v0

    .line 969
    :cond_66
    const/16 v0, 0x46

    if-lt p1, v0, :cond_71

    const/16 v0, 0x4b

    if-gt p1, v0, :cond_71

    .line 970
    const/16 v0, 0xe

    return v0

    .line 971
    :cond_71
    const/16 v0, 0x64

    if-lt p1, v0, :cond_7c

    const/16 v0, 0x6d

    if-gt p1, v0, :cond_7c

    .line 972
    const/16 v0, 0xf

    return v0

    .line 974
    :cond_7c
    const/16 v0, 0x20

    if-ne p1, v0, :cond_82

    .line 975
    const/4 v0, 0x5

    return v0

    .line 977
    :cond_82
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getFileIcon(Ljava/util/List;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Lcom/miui/mishare/app/view/MiShareFileTypeIcon;"
        }
    .end annotation

    .line 506
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v0, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;-><init>(Landroid/content/Context;)V

    .line 507
    .local v0, "icon":Lcom/miui/mishare/app/view/MiShareFileTypeIcon;
    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/view/MiShareFileTypeIcon;->setFileTypes(Ljava/util/List;)V

    .line 508
    return-object v0
.end method

.method private blacklist getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "fileName"    # Ljava/lang/String;

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 581
    return-object p1

    .line 583
    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "head":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "end":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110f02a9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const/4 v0, 0x1

    aput-object v1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getFileTypeDetailGroup(Ljava/util/List;)Landroid/view/View;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 518
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz p1, :cond_8d

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_8d

    .line 522
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 524
    .local v0, "fileCount":I
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x110c001d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 526
    .local v1, "view":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x413a3d71    # 11.64f

    invoke-static {v4, v5}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v4, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 528
    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 529
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    const v4, 0x110a00d8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 532
    .local v4, "singleFileNameTv":Landroid/widget/TextView;
    const v5, 0x110a00d4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 534
    .local v5, "fileCountTv":Landroid/widget/TextView;
    const/4 v6, 0x1

    if-ne v0, v6, :cond_69

    .line 536
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v6, v3}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8c

    .line 540
    :cond_69
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getMultiFileName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x110d0001

    new-array v6, v6, [Ljava/lang/Object;

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    .line 543
    invoke-virtual {v7, v8, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :goto_8c
    return-object v1

    .line 519
    .end local v0    # "fileCount":I
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "singleFileNameTv":Landroid/widget/TextView;
    .end local v5    # "fileCountTv":Landroid/widget/TextView;
    :cond_8d
    :goto_8d
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private blacklist getMultiFileName(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 573
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "firstName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/miui/mishare/app/util/MiShareFileHelper;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "secondName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    const v1, 0x110f02a7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist hasPrinter()Z
    .registers 6

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "miui.print.PRINT_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "com.android.printspooler"

    const-string v2, "com.android.printspooler.ui.MiuiPrintActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string v1, "printjob"

    const-string v2, "placehold"

    invoke-static {v1, v2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 357
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 358
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    if-nez v1, :cond_28

    .line 359
    return v2

    .line 361
    :cond_28
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 362
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    const/4 v2, 0x1

    :cond_33
    return v2
.end method

.method private blacklist init()V
    .registers 7

    .line 119
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x110c0048

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    new-instance v0, Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    .line 123
    const v0, 0x110a00d5

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x110a0079

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    .line 125
    const v1, 0x110a00bc

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    .line 126
    const v1, 0x110a00d6

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    .line 127
    const v1, 0x110a0071

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    .line 128
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->initScreenView()V

    .line 130
    const v1, 0x110a0070

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    .line 131
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->hasPrinter()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_70

    move v2, v4

    goto :goto_71

    :cond_70
    move v2, v3

    :goto_71
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 133
    const v1, 0x110a00b4

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    .line 134
    const v1, 0x110a002c

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    .line 136
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_a5

    .line 137
    const v1, 0x110a00af

    invoke-virtual {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "deviceView":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    const v0, 0x110a00b3

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 143
    .end local v1    # "deviceView":Landroid/view/View;
    :cond_a5
    new-instance v0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    .line 144
    invoke-virtual {v0, p0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->registerListener(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$OnDeviceClickListener;)V

    .line 145
    const v0, 0x110a007c

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    .line 146
    new-instance v1, Lcom/android/internal/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4, v4}, Lcom/android/internal/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 151
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->handleTouchOf(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->handleTouchOf(Landroid/view/View;)V

    .line 153
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->handleTouchOf(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->makeRoundCorner(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->makeRoundCorner(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/mishare/app/util/ViewUtils;->makeRoundCorner(Landroid/view/View;)V

    .line 158
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 159
    .local v0, "space":I
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    new-instance v2, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$1;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;I)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 165
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110700f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 166
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110700fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1107008c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 168
    .local v1, "padding":I
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v2, v1, v4, v1, v4}, Lcom/android/internal/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 170
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->initMiShareStatus()V

    .line 174
    return-void
.end method

.method private blacklist initMiShareStatus()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 209
    return-void
.end method

.method private blacklist initScreenView()V
    .registers 4

    .line 249
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    .line 250
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setScreenThrowHighLight(Z)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initScreenView is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiShareTransmissionView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method private blacklist isFileCanPrint(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 492
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isImageCanPrint(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 493
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isFilePdf(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2f

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2d

    .line 495
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isOfficeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 496
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalledAndSupportConvert(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v0, 0x1

    .line 492
    :goto_30
    return v0
.end method

.method public static blacklist isMiAppStore(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 448
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_21

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_b

    goto :goto_21

    .line 451
    :cond_b
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 452
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.xiaomi.market.fileprovider"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v0, v2

    :cond_20
    return v0

    .line 449
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_21
    :goto_21
    return v0
.end method

.method private blacklist isOfficeFile()Z
    .registers 5

    .line 822
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2b

    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2b

    .line 825
    :cond_15
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 826
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/mishare/app/util/MiShareFileHelper;->isOfficeFile(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2a

    move v1, v2

    :cond_2a
    return v1

    .line 823
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2b
    :goto_2b
    return v1
.end method

.method public static blacklist isServiceAvailable(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 371
    invoke-static {p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private blacklist onStartDiscover()V
    .registers 3

    .line 326
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 327
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported onStartDiscover"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 330
    :cond_c
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    .line 331
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    .line 332
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setEmptyView()V

    .line 333
    return-void
.end method

.method private blacklist print()V
    .registers 9

    .line 842
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_65

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 843
    new-instance v0, Lcom/miui/mishare/app/util/PrintHelper;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/mishare/app/util/PrintHelper;-><init>(Landroid/content/Context;)V

    .line 844
    .local v0, "printHelper":Lcom/miui/mishare/app/util/PrintHelper;
    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/util/PrintHelper;->setScaleMode(I)V

    .line 845
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 846
    .local v2, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.miui.mishare.action.PRINT_CONTROL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    const v4, -0x7fffffff

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    const-string v4, "*/*"

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    invoke-virtual {p0, v3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 852
    .local v4, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_65

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 853
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_65

    .line 854
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 855
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    const/4 v6, 0x0

    const/16 v7, -0x2710

    invoke-virtual {v5, v3, v6, v1, v7}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 858
    .end local v0    # "printHelper":Lcom/miui/mishare/app/util/PrintHelper;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_65
    return-void
.end method

.method private blacklist refreshView(II)V
    .registers 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 276
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 277
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported mishare refreshView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 280
    :cond_c
    const/4 v0, 0x3

    if-gt p1, v0, :cond_16

    const/4 v1, 0x4

    if-lt p2, v1, :cond_16

    .line 282
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->onStartDiscover()V

    goto :goto_25

    .line 283
    :cond_16
    const/4 v1, 0x2

    if-gt p1, v1, :cond_1f

    if-ne p2, v0, :cond_1f

    .line 285
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    goto :goto_25

    .line 286
    :cond_1f
    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    .line 287
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->onStopDiscover()V

    .line 289
    :cond_25
    :goto_25
    return-void
.end method

.method private blacklist registerScreenStateObserver()V
    .registers 5

    .line 255
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    .line 256
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_project_in_screening"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    return-void
.end method

.method private blacklist registerStateReceiver()V
    .registers 4

    .line 177
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 178
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported registerStateReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_c
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver-IA;)V

    iput-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.miui.mishare.connectivity.TASK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method private blacklist screenThrow()V
    .registers 2

    .line 873
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    if-eqz v0, :cond_a

    .line 874
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->closeScreenThrow()V

    goto :goto_f

    .line 876
    :cond_a
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->openScreenThrow()V

    .line 878
    :goto_f
    return-void
.end method

.method private blacklist send(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;
    .param p2, "deviceX"    # I
    .param p3, "deviceY"    # I

    .line 655
    if-nez p1, :cond_3

    .line 656
    return-void

    .line 658
    :cond_3
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1f

    .line 664
    :cond_e
    const/4 v0, 0x5

    iput v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    .line 665
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->notifyDataSetChanged()V

    .line 666
    new-instance v0, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView$4;-><init>(Lcom/miui/mishare/app/view/MiShareTransmissionView;Lcom/miui/mishare/app/model/MiShareDevice;II)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 698
    return-void

    .line 659
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    if-eqz v0, :cond_26

    .line 660
    invoke-interface {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;->hasNoFiles()V

    .line 662
    :cond_26
    return-void
.end method

.method private blacklist setDisabledView()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->stopSort()V

    .line 301
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    const v2, 0x110f03b9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method

.method private blacklist setEmptyView()V
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mEnableMiShareView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTipsTv:Landroid/widget/TextView;

    const v1, 0x110f0326

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiShareDisabled:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDeviceLv:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setInitialAddDevice()V

    .line 297
    return-void
.end method

.method private blacklist shareByGoogleNearby()V
    .registers 6

    .line 881
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_a
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    if-eqz v0, :cond_12

    .line 882
    invoke-interface {v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;->hasNoFiles()V

    .line 883
    return-void

    .line 885
    :cond_12
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/mishare/app/NearbyUtils;->getShareIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 886
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v1, v0, v2, v3, v4}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 888
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 889
    return-void
.end method

.method private blacklist showGuide(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .line 794
    new-instance v0, Lcom/miui/mishare/app/view/GuidePopupWindow2;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;-><init>(Landroid/content/Context;)V

    .line 795
    .local v0, "guidePopupWindow":Lcom/miui/mishare/app/view/GuidePopupWindow2;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 796
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setArrowMode(I)V

    goto :goto_19

    .line 798
    :cond_15
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setArrowMode(I)V

    .line 800
    :goto_19
    const v1, 0x110f022a

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->setGuideText(I)V

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/miui/mishare/app/view/GuidePopupWindow2;->show(Landroid/view/View;IIZ)V

    .line 802
    return-void
.end method

.method private blacklist showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 818
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 819
    return-void
.end method

.method private blacklist startDiscoverIfNeeded()V
    .registers 5

    .line 308
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 309
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported startDiscoverIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_c
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    if-nez v0, :cond_2e

    .line 313
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 314
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v3, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v2, v3, v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->startDiscoverWithIntent(Lcom/miui/mishare/IMiShareDiscoverCallback;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 315
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    goto :goto_2e

    .line 318
    :cond_22
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v0, v2}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->startDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 319
    iput-boolean v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    .line 323
    :cond_2e
    :goto_2e
    return-void
.end method

.method private blacklist unregisterStateReceiver()V
    .registers 3

    .line 188
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 189
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported unregisterStateReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_c
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    if-eqz v0, :cond_19

    .line 193
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mShareTaskStateReceive:Lcom/miui/mishare/app/view/MiShareTransmissionView$MiShareTaskStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    :cond_19
    return-void
.end method


# virtual methods
.method public blacklist bind()V
    .registers 2

    .line 394
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0, p0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->bind(Lcom/miui/mishare/app/connect/MiShareConnectivity$ServiceBindCallBack;)Z

    .line 395
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->registerStateReceiver()V

    .line 396
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->registerScreenStateObserver()V

    .line 397
    return-void
.end method

.method public blacklist getActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 862
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 863
    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 865
    .local v0, "resInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_23

    .line 866
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 867
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_22

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_22
    return-object v1

    .line 869
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_23
    return-object v1
.end method

.method public blacklist onCancelTask(Lcom/miui/mishare/app/model/MiShareDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;

    .line 651
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0, p1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->cancel(Lcom/miui/mishare/app/model/MiShareDevice;)V

    .line 652
    return-void
.end method

.method public whitelist onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 740
    .local v0, "id":I
    const v1, 0x110a002c

    if-ne v0, v1, :cond_e

    .line 741
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->startDiscoverIfNeeded()V

    goto/16 :goto_d7

    .line 742
    :cond_e
    const v1, 0x110a0071

    if-ne v0, v1, :cond_1f

    .line 743
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->screenThrow()V

    .line 744
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowClick:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_d7

    .line 745
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto/16 :goto_d7

    .line 747
    :cond_1f
    const v1, 0x110a0070

    if-ne v0, v1, :cond_8b

    .line 748
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 749
    .local v1, "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_44

    .line 751
    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 752
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110f02ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showToast(Ljava/lang/String;)V

    .line 753
    return-void

    .line 756
    :cond_44
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->canPrint()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 757
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->print()V

    .line 758
    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiPrintClick:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_8a

    .line 759
    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_8a

    .line 761
    :cond_55
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isOfficeFile()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 762
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_6d

    .line 763
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalledAndSupportConvert(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 764
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->convertPdfAndPrint()V

    goto :goto_8a

    .line 766
    :cond_6d
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110f020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showToast(Ljava/lang/String;)V

    goto :goto_8a

    .line 769
    :cond_7c
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x110f01e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showToast(Ljava/lang/String;)V

    .line 771
    .end local v1    # "context":Landroid/content/Context;
    :cond_8a
    :goto_8a
    goto :goto_d7

    :cond_8b
    const v1, 0x110a00d5

    if-ne v0, v1, :cond_c0

    .line 772
    invoke-static {}, Lcom/miui/mishare/DeviceModel;->supportUwb()Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 773
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.mishare.ACTION_SHOW_FIND_DEVICE_GUIDE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.mishare.connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_b8

    .line 777
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_bb

    .line 780
    :cond_b8
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showGuide(Landroid/view/View;)V

    .line 782
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_bb
    goto :goto_d7

    .line 784
    :cond_bc
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->showGuide(Landroid/view/View;)V

    goto :goto_d7

    .line 786
    :cond_c0
    const v1, 0x110a00bc

    if-ne v0, v1, :cond_cf

    .line 787
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/securityshare/SecurityShareHelper;->startPrivacyProtectSettingsActivity(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_d7

    .line 788
    :cond_cf
    const v1, 0x110a0030

    if-ne v0, v1, :cond_d7

    .line 789
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->shareByGoogleNearby()V

    .line 791
    :cond_d7
    :goto_d7
    return-void
.end method

.method public blacklist onDeviceTaskRetry(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 5
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;
    .param p2, "deviceX"    # I
    .param p3, "deviceY"    # I

    .line 643
    invoke-virtual {p1}, Lcom/miui/mishare/app/model/MiShareDevice;->isPC()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 644
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice;->generatePCTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 646
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    .line 647
    return-void
.end method

.method public blacklist onDeviceTaskStart(Lcom/miui/mishare/app/model/MiShareDevice;II)V
    .registers 4
    .param p1, "device"    # Lcom/miui/mishare/app/model/MiShareDevice;
    .param p2, "deviceX"    # I
    .param p3, "deviceY"    # I

    .line 708
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->send(Lcom/miui/mishare/app/model/MiShareDevice;II)V

    .line 709
    return-void
.end method

.method public blacklist onServiceBound()V
    .registers 3

    .line 1021
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    .line 1022
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    .line 1024
    :cond_b
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowListener:Lcom/miui/mishare/IScreenThrowListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->registerScreenThrowListener(Lcom/miui/mishare/IScreenThrowListener;)V

    .line 1025
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->getServiceState()I

    move-result v0

    .line 1026
    .local v0, "newState":I
    iget v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    invoke-direct {p0, v1, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->refreshView(II)V

    .line 1027
    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    .line 1028
    return-void
.end method

.method public blacklist onServiceUnBound()V
    .registers 5

    .line 1032
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->onStopDiscover()V

    .line 1033
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->clear()V

    .line 1034
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setInitialAddDevice()V

    .line 1035
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mState:I

    .line 1036
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->resetRebindData()V

    .line 1037
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mReBindRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1038
    return-void
.end method

.method public blacklist onStopDiscover()V
    .registers 3

    .line 336
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    .line 337
    const-string v0, "MiShareTransmissionView"

    const-string v1, "global version is not supported onStopDiscover"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 340
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscovering:Z

    .line 341
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mTaskStateListener:Lcom/miui/mishare/IMiShareTaskStateListener$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterTaskStateListener(Lcom/miui/mishare/IMiShareTaskStateListener;)V

    .line 342
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setDisabledView()V

    .line 343
    return-void
.end method

.method public blacklist registerHasNoFilesListener(Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    .line 461
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHasNoFilesListener:Lcom/miui/mishare/app/view/MiShareTransmissionView$HasNoFilesListener;

    .line 462
    return-void
.end method

.method public blacklist setDeliveryTitle(Ljava/lang/String;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/String;

    .line 470
    const v0, 0x110a00d7

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 471
    .local v0, "titleTv":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    return-void
.end method

.method public blacklist setFiles(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 426
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFiles:Ljava/util/List;

    .line 427
    iget-boolean v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentFilled:Z

    if-nez v0, :cond_14

    .line 428
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileIcon(Ljava/util/List;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    .line 429
    invoke-direct {p0, p1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getFileTypeDetailGroup(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    .line 432
    :cond_14
    const/4 v0, 0x0

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    goto :goto_2d

    .line 435
    :cond_1f
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 436
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->isFileCanPrint(Landroid/net/Uri;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setMiPrintEnable(Z)V

    goto :goto_30

    .line 433
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2d
    :goto_2d
    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->setMiPrintEnable(Z)V

    .line 438
    :goto_30
    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mSecurityShareView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/miui/securityshare/SecurityShareHelper;->isShowSecurityShareView(Landroid/content/Context;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    const/16 v0, 0x8

    :goto_3f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    return-void
.end method

.method public blacklist setIntent(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 375
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIntent:Landroid/content/Intent;

    .line 376
    if-eqz p1, :cond_48

    .line 377
    const-string v0, "com.miui.mishare.extra.MISHARE_APK_PACKAGE_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "apkPackageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 380
    :try_start_10
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 382
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Lcom/miui/mishare/app/view/MiShareFileTypeIcon;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    .line 383
    invoke-direct {p0, v1}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getApplicationDetail(Landroid/content/pm/ApplicationInfo;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->addType2Container(Landroid/view/View;)V

    .line 384
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentFilled:Z
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2e} :catch_2f

    .line 388
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_48

    .line 385
    :catch_2f
    move-exception v1

    .line 386
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharing apk with an illegal package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiShareTransmissionView"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    .end local v0    # "apkPackageName":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_48
    :goto_48
    return-void
.end method

.method public blacklist setMiPrintClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 638
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mMiPrintClick:Landroid/view/View$OnClickListener;

    .line 639
    return-void
.end method

.method public blacklist setMiPrintEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 613
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mPrintBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    const v1, 0x11080156

    goto :goto_b

    :cond_8
    const v1, 0x11080157

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 614
    return-void
.end method

.method public blacklist setScreenThrowClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 595
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrowClick:Landroid/view/View$OnClickListener;

    .line 596
    return-void
.end method

.method public blacklist setScreenThrowEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 604
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    if-eqz p1, :cond_8

    const v1, 0x11080151

    goto :goto_b

    :cond_8
    const v1, 0x11080152

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 605
    return-void
.end method

.method public blacklist setScreenThrowHighLight(Z)V
    .registers 5
    .param p1, "highLight"    # Z

    .line 622
    if-eqz p1, :cond_1f

    .line 623
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    const v1, 0x11080153

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3b

    .line 626
    :cond_1f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1108002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mScreenThrow:Landroid/widget/ImageButton;

    const v1, 0x11080151

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 629
    :goto_3b
    iput-boolean p1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mIsScreenThrowConnected:Z

    .line 630
    return-void
.end method

.method public blacklist setSpaceHeight(I)V
    .registers 8
    .param p1, "height"    # I

    .line 480
    const v0, 0x110a00af

    invoke-virtual {p0, v0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, "deviceView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 482
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_24

    .line 483
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 484
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v4, p1

    invoke-static {v3, v4}, Lcom/miui/mishare/app/util/ScreenUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 483
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 487
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    :cond_24
    return-void
.end method

.method public blacklist showFileDetailGroup(Z)V
    .registers 4
    .param p1, "show"    # Z

    .line 203
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mFileTypeContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    const/16 v1, 0x8

    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public blacklist unbind()V
    .registers 3

    .line 400
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->checkServiceBound()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 401
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterScreenThrowListener()V

    .line 402
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1f

    .line 403
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mStateListener:Lcom/miui/mishare/IMiShareStateListener;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unregisterStateListener(Lcom/miui/mishare/IMiShareStateListener;)V

    .line 404
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mDiscoverCallback:Lcom/miui/mishare/IMiShareDiscoverCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->stopDiscover(Lcom/miui/mishare/IMiShareDiscoverCallback;)V

    .line 407
    :cond_1f
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mConnectivity:Lcom/miui/mishare/app/connect/MiShareConnectivity;

    invoke-virtual {v0}, Lcom/miui/mishare/app/connect/MiShareConnectivity;->unbind()V

    .line 409
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mAdapter:Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    invoke-virtual {v0}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->stopSort()V

    .line 410
    invoke-direct {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unregisterStateReceiver()V

    .line 411
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->unregisterScreenStateObserver()V

    .line 412
    return-void
.end method

.method public blacklist unregisterScreenStateObserver()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    if-eqz v0, :cond_11

    .line 416
    invoke-virtual {p0}, Lcom/miui/mishare/app/view/MiShareTransmissionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/mishare/app/view/MiShareTransmissionView;->mContentObserver:Lcom/miui/mishare/app/view/MiShareTransmissionView$ScreenStateContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 418
    :cond_11
    return-void
.end method
