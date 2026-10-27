.class public Landroid/app/MiuiActivitySplitterImpl;
.super Ljava/lang/Object;
.source "MiuiActivitySplitterImpl.java"

# interfaces
.implements Landroid/app/IMiuiActivitySplitterImpl;


# static fields
.field private static final blacklist ACTION_CROP_IMAGE:Ljava/lang/String; = "com.android.camera.action.CROP"

.field private static final blacklist ACTION_CROP_WALLPAPER:Ljava/lang/String; = "com.android.camera.action.CROP_WALLPAPER"

.field private static final blacklist DEFALUT_PID_VALUE:I = -0x1

.field private static blacklist DEFAULT_LANDSCAPE_LEFT_WEIGHT:I = 0x0

.field private static blacklist DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I = 0x0

.field private static blacklist DEFAULT_LEFT_WEIGHT:I = 0x0

.field private static blacklist DEFAULT_RIGHT_WEIGHT:I = 0x0

.field private static final blacklist ENSURE_ACTIVITY_RESUME_DELAY:I = 0x1f4

.field private static final blacklist ENSURE_CONTENT_SHOWING_DELAY:I = 0x12c

.field public static final blacklist EXTRA_MIUI_SPLIT_REGION:Ljava/lang/String; = "miui.intent.extra.SPLIT_REGION"

.field public static final blacklist EXTRA_MIUI_SPLIT_SECSTAGE:Ljava/lang/String; = "miui.intent.extra.SPLIT_SECSTAGE"

.field private static final blacklist INTERFACE_TOKEN:Ljava/lang/String; = "android.app.IActivityManager"

.field private static final blacklist MSG_ADD_TO_ENTRY_STACK:I = 0x2

.field private static final blacklist MSG_CLEAR_ENTRY_STACK:I = 0x1

.field private static final blacklist MSG_REMOVE_FROM_ENTRY_STACK:I = 0x7

.field private static final blacklist MSG_RESTART_LAST_CONTENT:I = 0x6

.field private static final blacklist MSG_SET_ACTIONBAR:I = 0x3

.field private static final blacklist MSG_SET_FIRST_DONE:I = 0x4

.field private static final blacklist MSG_SET_RESUMED:I = 0x5

.field private static final blacklist NEED_PERFORM_CLICK_ACTION_DELAY:I = 0x1f4

.field private static final blacklist NOUSEPARAM_PID_VALUE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiActivitySplitterImpl"

.field private static final blacklist TYPE_FILEMANAGER:Ljava/lang/String; = "filemanager.dir"

.field private static blacklist sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/MiuiActivitySplitterImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mBasePid:I

.field private blacklist mContentWindowWeight:F

.field private blacklist mEventDelayTimeBegin:J

.field private blacklist mIsAllContentGone:Z

.field private blacklist mIsAllSubFinished:Z

.field private blacklist mIsBackPressed:Z

.field private blacklist mIsDummySecondActivity:Z

.field private blacklist mIsFinishing:Z

.field private blacklist mIsRecycled:Z

.field private blacklist mIsRestart:Z

.field private blacklist mIsResumed:Z

.field private blacklist mIsSecondStageActivity:Z

.field private blacklist mIsSplit:Z

.field private blacklist mIsSplitBaseActivity:Z

.field private blacklist mSplitHandler:Landroid/os/Handler;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mUpButtonVisibility:I

.field private blacklist mWinSize:Landroid/util/DisplayMetrics;

.field private blacklist mWindowManager:Landroid/view/IWindowManager;

.field private blacklist sContentIndexActionBar:Landroid/view/View;

.field private blacklist sContentIndexView:Landroid/view/View;

.field private blacklist sContentIndexViewWeight:F

.field private final blacklist sExtraSplitBasePid:Ljava/lang/String;

.field private blacklist sIsControllerShowing:Z

.field private blacklist sIsExitMuitiWindowModeJustRecent:Z

.field private blacklist sIsFirstTimeStart:Z

.field private blacklist sIsLastReportedMultiWindowMode:Z

.field private blacklist sOldWindowWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Landroid/app/MiuiActivitySplitterImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActivity(Landroid/app/MiuiActivitySplitterImpl;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsAllSubFinished(Landroid/app/MiuiActivitySplitterImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/app/MiuiActivitySplitterImpl;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Landroid/app/MiuiActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddToEntryStack(Landroid/app/MiuiActivitySplitterImpl;Landroid/os/IBinder;ILandroid/content/Intent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/MiuiActivitySplitterImpl;->addToEntryStack(Landroid/os/IBinder;ILandroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearSplittableInfo(Landroid/app/MiuiActivitySplitterImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRestartLastContentIfNeeded(Landroid/app/MiuiActivitySplitterImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->handleRestartLastContentIfNeeded(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misBaseActivityNeedExit(Landroid/app/MiuiActivitySplitterImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misTopSplitActivity(Landroid/app/MiuiActivitySplitterImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isTopSplitActivity()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mjudgeClearEntryStack(Landroid/app/MiuiActivitySplitterImpl;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->judgeClearEntryStack()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveFromEntryStack(Landroid/app/MiuiActivitySplitterImpl;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->removeFromEntryStack(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetActionBarButton(Landroid/app/MiuiActivitySplitterImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setActionBarButton(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    const/16 v0, 0x266

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 54
    const/16 v0, 0x3da

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 55
    const/16 v0, 0x334

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 56
    const/16 v0, 0x6cc

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    .line 109
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "zizhan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "babylon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_7f

    .line 114
    :cond_2c
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 115
    const/16 v0, 0x30c

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 116
    const/16 v0, 0x438

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    goto :goto_8d

    .line 117
    :cond_3f
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "yunluo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 118
    const/16 v0, 0x1cc

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 119
    const/16 v0, 0x2e4

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 120
    const/16 v0, 0x281

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 121
    const/16 v0, 0x54f

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_8d

    .line 122
    :cond_5a
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "pipa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6e

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "liuqin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 123
    :cond_6e
    const/16 v0, 0x2b3

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 124
    const/16 v0, 0x455

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 125
    const/16 v0, 0x39a

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 126
    const/16 v0, 0x7a6

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_8d

    .line 110
    :cond_7f
    :goto_7f
    const/16 v0, 0x130

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 111
    const/16 v1, 0x188

    sput v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 112
    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    .line 113
    const/16 v0, 0x1e1

    sput v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    .line 128
    :cond_8d
    :goto_8d
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/Activity;Z)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isBase"    # Z

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "miui.extra.split.PID"

    iput-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sExtraSplitBasePid:Ljava/lang/String;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsFirstTimeStart:Z

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sOldWindowWidth:I

    .line 86
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    .line 88
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/app/MiuiActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 89
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    .line 90
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    .line 91
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsBackPressed:Z

    .line 92
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsFinishing:Z

    .line 93
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRecycled:Z

    .line 94
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRestart:Z

    .line 95
    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    .line 96
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 98
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    .line 99
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    .line 102
    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mUpButtonVisibility:I

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    .line 105
    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    .line 131
    iput-object p1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 132
    if-eqz p2, :cond_3a

    .line 133
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->removeCancelFlagInner(Landroid/content/Intent;)V

    .line 135
    :cond_3a
    return-void
.end method

.method private blacklist addToEntryStack(Landroid/os/IBinder;ILandroid/content/Intent;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    const v0, 0xfffda4

    .line 139
    .local v0, "code":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 143
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 146
    .local v3, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v0, v1, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 147
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 149
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void
.end method

.method private blacklist adjustActionBar(Landroid/view/View;)V
    .registers 6
    .param p1, "actionBar"    # Landroid/view/View;

    .line 153
    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    .line 154
    .local v0, "view":Landroid/view/View;
    :goto_8
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v1, :cond_e

    .line 155
    iput-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexActionBar:Landroid/view/View;

    .line 158
    :cond_e
    if-eqz v0, :cond_2e

    iget v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_18

    goto :goto_2e

    .line 163
    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 164
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 165
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void

    .line 159
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2e
    :goto_2e
    const-string v1, "MiuiActivitySplitterImpl"

    const-string v2, "Can not get actionbar layout."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method private blacklist adjustContentIndexView()V
    .registers 2

    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView(Z)V

    .line 170
    return-void
.end method

.method private blacklist adjustContentIndexView(Z)V
    .registers 6
    .param p1, "isFromExitMultiWindow"    # Z

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    if-eqz v1, :cond_54

    iget v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_54

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_54

    .line 177
    :cond_13
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 178
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v2

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sOldWindowWidth:I

    .line 179
    iget v3, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    int-to-float v2, v2

    mul-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 180
    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjust content index view, set width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiuiActivitySplitterImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_47
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    if-eqz p1, :cond_50

    .line 185
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexActionBar:Landroid/view/View;

    .line 187
    :cond_50
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->adjustActionBar(Landroid/view/View;)V

    .line 188
    return-void

    .line 175
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_54
    :goto_54
    return-void
.end method

.method private blacklist checkSecondStage(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 191
    if-eqz p1, :cond_46

    .line 192
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 193
    if-nez v0, :cond_28

    .line 194
    sget-object v0, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRecycled:Z

    if-nez v0, :cond_24

    :cond_1e
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isTopSecondTransferActivity()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    goto :goto_26

    :cond_25
    move v1, v2

    :goto_26
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsDummySecondActivity:Z

    .line 196
    :cond_28
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_46

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is second stage ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiActivitySplitterImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_46
    return-void
.end method

.method private blacklist checkSplitHandler()V
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 232
    return-void

    .line 235
    :cond_5
    new-instance v0, Landroid/app/MiuiActivitySplitterImpl$1;

    invoke-direct {v0, p0}, Landroid/app/MiuiActivitySplitterImpl$1;-><init>(Landroid/app/MiuiActivitySplitterImpl;)V

    iput-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method private blacklist clearEntryStack(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    const v0, 0xfffda3

    .line 290
    .local v0, "code":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 295
    .local v2, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 296
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 299
    return-void
.end method

.method private blacklist clearEntryStack(Z)V
    .registers 6
    .param p1, "isIncludeSelf"    # Z

    .line 302
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/os/IBinder;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    .line 304
    .local v0, "token":Landroid/os/IBinder;
    :goto_9
    :try_start_9
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->clearEntryStack(Landroid/os/IBinder;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 307
    goto :goto_15

    .line 305
    :catch_d
    move-exception v1

    .line 306
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string v2, "MiuiActivitySplitterImpl"

    const-string v3, "clearEntryStack FAIL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .end local v1    # "remoteException":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method private blacklist clearSplittableInfo()V
    .registers 2

    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 312
    return-void
.end method

.method private blacklist deliverExtraInfo(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 315
    if-nez p1, :cond_3

    .line 316
    return-void

    .line 318
    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 320
    .local v0, "startIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2e

    .line 321
    const-string v1, "miui.extra.split.PID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 322
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    :cond_1f
    const-string v1, "extras_miui_split_size"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 325
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 328
    :cond_2e
    return-void
.end method

.method private blacklist disposeFakeActivity(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 331
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_a

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    .line 333
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 335
    :cond_a
    return-void
.end method

.method private blacklist finishAssociatedActivities()V
    .registers 4

    .line 338
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    const-string v1, "MiuiActivitySplitterImpl"

    if-nez v0, :cond_a

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsDummySecondActivity:Z

    if-eqz v0, :cond_49

    :cond_a
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 339
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsFinishing:Z

    if-eqz v0, :cond_1b

    goto :goto_49

    .line 343
    :cond_1b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsFinishing:Z

    .line 344
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isTopSplitActivity()Z

    move-result v2

    if-nez v2, :cond_2e

    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsBackPressed:Z

    if-nez v2, :cond_2e

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isFinishChain()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 345
    :cond_2e
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isTaskRoot()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 346
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 347
    return-void

    .line 350
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_3f} :catch_40

    .line 353
    goto :goto_48

    .line 351
    :catch_40
    move-exception v0

    .line 352
    .local v0, "illegalStateException":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v0    # "illegalStateException":Ljava/lang/IllegalStateException;
    :cond_48
    :goto_48
    return-void

    .line 340
    :cond_49
    :goto_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity is already finishing : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method private blacklist finishOtherSplitActivity()V
    .registers 5

    .line 367
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V

    .line 368
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getDelayTime()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    return-void
.end method

.method private blacklist getBasePid()I
    .registers 4

    .line 372
    iget v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    if-lez v0, :cond_5

    .line 373
    return v0

    .line 375
    :cond_5
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 376
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "miui.extra.split.PID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    .line 378
    :cond_1c
    iget v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    if-gez v0, :cond_26

    .line 379
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    .line 381
    :cond_26
    iget v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mBasePid:I

    return v0
.end method

.method private blacklist getCompName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 385
    if-nez p1, :cond_4

    .line 386
    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_4
    const/4 v0, 0x0

    .line 390
    .local v0, "compName":Ljava/lang/String;
    :try_start_5
    const-string v1, ":settings:show_fragment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 391
    if-nez v0, :cond_1e

    .line 392
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_3a

    .line 395
    :cond_1e
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v1, :cond_3a

    .line 396
    const-string v1, "MiuiActivitySplitterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get fragment name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3b

    .line 400
    :cond_3a
    :goto_3a
    goto :goto_3f

    .line 398
    :catch_3b
    move-exception v1

    .line 399
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    return-object v0
.end method

.method private blacklist getContentWeight(Z)F
    .registers 7
    .param p1, "isFromConfigChange"    # Z

    .line 405
    iget v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_a

    if-nez p1, :cond_a

    .line 406
    return v0

    .line 408
    :cond_a
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_13

    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    goto :goto_15

    :cond_13
    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 409
    .local v0, "leftWeight":I
    :goto_15
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_20

    :cond_1e
    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 410
    .local v1, "rightWeight":I
    :goto_20
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-int v4, v0, v1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 411
    sub-float/2addr v3, v2

    iput v3, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    .line 412
    return v2
.end method

.method private blacklist getCurrentWindowWidth()I
    .registers 4

    .line 422
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_b

    .line 423
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    .line 425
    :cond_b
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 426
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsExitMuitiWindowModeJustRecent:Z

    const-string v1, "MiuiActivitySplitterImpl"

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_42

    iget v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sOldWindowWidth:I

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sOldWindowWidth:I

    if-eq v0, v2, :cond_42

    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsExitMuitiWindowModeJustRecent:Z

    .line 429
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sOldWindowWidth:I

    .line 430
    const-string v0, "adjustContentIndexView because window width changed!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView(Z)V

    .line 434
    :cond_42
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_60

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get current window width is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_60
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mWinSize:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static blacklist getDefault(Landroid/app/Activity;)Landroid/app/MiuiActivitySplitterImpl;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->getDefault(Landroid/app/Activity;Z)Landroid/app/MiuiActivitySplitterImpl;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getDefault(Landroid/app/Activity;Z)Landroid/app/MiuiActivitySplitterImpl;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isBase"    # Z

    .line 445
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 446
    return-object v0

    .line 448
    :cond_4
    sget-object v1, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/MiuiActivitySplitterImpl;

    .line 449
    .local v1, "instance":Landroid/app/MiuiActivitySplitterImpl;
    if-eqz v1, :cond_17

    .line 450
    return-object v1

    .line 452
    :cond_17
    if-nez p1, :cond_38

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_38

    .line 454
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_38

    .line 455
    :cond_37
    return-object v0

    .line 457
    :cond_38
    new-instance v0, Landroid/app/MiuiActivitySplitterImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/MiuiActivitySplitterImpl;-><init>(Landroid/app/Activity;Z)V

    .line 458
    .end local v1    # "instance":Landroid/app/MiuiActivitySplitterImpl;
    .local v0, "instance":Landroid/app/MiuiActivitySplitterImpl;
    sget-object v1, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    return-object v0
.end method

.method private blacklist getDelayTime()I
    .registers 6

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "activity_close_enter_duration"

    const-string v2, "integer"

    const-string v3, "android.miui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, "idAnimDuration":I
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 466
    .local v1, "duration":I
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v2, :cond_2a

    .line 467
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    .line 470
    :cond_2a
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_37

    .line 471
    int-to-float v3, v1

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_34} :catch_38

    mul-float/2addr v3, v2

    float-to-int v2, v3

    return v2

    .line 475
    .end local v0    # "idAnimDuration":I
    .end local v1    # "duration":I
    :cond_37
    goto :goto_40

    .line 473
    :catch_38
    move-exception v0

    .line 474
    .local v0, "exception":Landroid/os/RemoteException;
    const-string v1, "MiuiActivitySplitterImpl"

    const-string v2, "throws RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    .end local v0    # "exception":Landroid/os/RemoteException;
    :goto_40
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 480
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private blacklist getIntentInfo(IZ)Landroid/content/Intent;
    .registers 12
    .param p1, "pid"    # I
    .param p2, "isForLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    const v0, 0xfffda5

    .line 503
    .local v0, "code":I
    move v1, p2

    .line 504
    .local v1, "forLast":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 505
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 510
    .local v3, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 512
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 513
    .local v4, "parcels":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    .line 514
    .local v6, "intent":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 516
    .local v7, "bundle":Landroid/os/Bundle;
    aget-object v8, v4, v5

    instance-of v8, v8, Landroid/content/Intent;

    if-eqz v8, :cond_38

    .line 517
    aget-object v5, v4, v5

    move-object v6, v5

    check-cast v6, Landroid/content/Intent;

    .line 519
    :cond_38
    const/4 v5, 0x1

    aget-object v8, v4, v5

    instance-of v8, v8, Landroid/os/Bundle;

    if-eqz v8, :cond_44

    .line 520
    aget-object v5, v4, v5

    move-object v7, v5

    check-cast v7, Landroid/os/Bundle;

    .line 522
    :cond_44
    if-eqz v6, :cond_4b

    if-eqz v7, :cond_4b

    .line 523
    invoke-virtual {v6, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 525
    :cond_4b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 526
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 527
    return-object v6
.end method

.method private blacklist getLastResumedActivity()Landroid/content/pm/ActivityInfo;
    .registers 7

    .line 484
    const v0, 0xfffffc

    .line 485
    .local v0, "code":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 486
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 488
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 490
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 491
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 492
    const-class v4, Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    move-object v3, v4

    .line 493
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_33} :catch_34

    .line 497
    goto :goto_38

    .line 495
    :catch_34
    move-exception v4

    .line 496
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_38
    return-object v3
.end method

.method private blacklist getSplitModeValue(Landroid/content/Intent;)I
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 531
    const/4 v0, 0x0

    if-nez p1, :cond_4

    goto :goto_a

    :cond_4
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :goto_a
    return v0
.end method

.method private blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 683
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 684
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 687
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const v3, 0xfffd9f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 689
    const-class v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 690
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    return-object v2
.end method

.method private blacklist getTopActivity()Landroid/content/ComponentName;
    .registers 3

    .line 536
    :try_start_0
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 537
    .local v0, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v0, :cond_9

    .line 538
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    return-object v1

    .line 542
    .end local v0    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_9
    goto :goto_e

    .line 540
    :catch_a
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_e
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTopSplitActivity()Landroid/app/Activity;
    .registers 4

    .line 702
    :try_start_0
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->getTopSplitActivityToken(I)Landroid/os/IBinder;

    move-result-object v0

    .line 703
    .local v0, "token":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 704
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_14

    return-object v1

    .line 708
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_13
    goto :goto_1c

    .line 706
    :catch_14
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiuiActivitySplitterImpl"

    const-string v2, "Get top Activity fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getTopSplitActivityComp()Landroid/content/ComponentName;
    .registers 3

    .line 696
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopSplitActivity()Landroid/app/Activity;

    move-result-object v0

    .line 697
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method

.method private blacklist getTopSplitActivityToken(I)Landroid/os/IBinder;
    .registers 7
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 714
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const v3, 0xfffda0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 720
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 721
    .local v2, "token":Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 723
    return-object v2
.end method

.method private blacklist handleRestartLastContentIfNeeded(Z)V
    .registers 7
    .param p1, "isFromConfigChange"    # Z

    .line 547
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_5

    .line 548
    return-void

    .line 550
    :cond_5
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    .line 551
    .local v0, "subIntent":Landroid/content/Intent;
    const-string v1, "MiuiActivitySplitterImpl"

    if-eqz v0, :cond_91

    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    if-nez v2, :cond_17

    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsLastReportedMultiWindowMode:Z

    if-nez v2, :cond_17

    goto/16 :goto_91

    .line 557
    :cond_17
    if-eqz p1, :cond_23

    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsLastReportedMultiWindowMode:Z

    if-eqz v2, :cond_23

    .line 558
    const-string v2, "Try to start subintent return, app not exit multiwindow"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-void

    .line 561
    :cond_23
    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v2, :cond_55

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFromConfigChange ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", FirstTime start ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsFirstTimeStart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRestart ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRestart:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_55
    const/4 v2, 0x0

    if-nez p1, :cond_60

    iget-boolean v3, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsFirstTimeStart:Z

    if-nez v3, :cond_60

    iget-boolean v3, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRestart:Z

    if-eqz v3, :cond_66

    :cond_60
    iget-boolean v3, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    if-nez v3, :cond_66

    const/4 v3, 0x1

    goto :goto_67

    :cond_66
    move v3, v2

    .line 565
    .local v3, "change":Z
    :goto_67
    iput-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRestart:Z

    .line 566
    iput-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsFirstTimeStart:Z

    .line 567
    if-eqz v3, :cond_90

    .line 568
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 569
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 570
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 572
    :try_start_79
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_7e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_79 .. :try_end_7e} :catch_8a
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7e} :catch_7f

    goto :goto_90

    .line 575
    :catch_7f
    move-exception v2

    .line 576
    .local v2, "exception":Ljava/lang/Exception;
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/app/MiuiActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 577
    const-string v4, "restartLastContentIfNeeded, startActivity Fail"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 573
    .end local v2    # "exception":Ljava/lang/Exception;
    :catch_8a
    move-exception v2

    .line 574
    .local v2, "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "startActivity Fail, ActivityNotFound!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v2    # "activityNotFoundException":Landroid/content/ActivityNotFoundException;
    :cond_90
    :goto_90
    return-void

    .line 552
    .end local v3    # "change":Z
    :cond_91
    :goto_91
    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v2, :cond_9a

    .line 553
    const-string v2, "Try to start subintent, return 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_9a
    return-void
.end method

.method private blacklist handleSplitActivityStack(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 584
    if-nez p1, :cond_3

    .line 585
    return-void

    .line 587
    :cond_3
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_15

    .line 588
    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_14

    .line 589
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->pushSplitActivityToStack()V

    .line 591
    :cond_14
    return-void

    .line 593
    :cond_15
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->pushSplitActivityToStack()V

    .line 594
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    if-eqz v0, :cond_25

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTop(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 595
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->finishOtherSplitActivity()V

    .line 597
    :cond_25
    return-void
.end method

.method private blacklist isBaseActivityNeedExit()Z
    .registers 2

    .line 624
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method private blacklist isBaseActivityNeedExit(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 628
    if-eqz p1, :cond_d

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private blacklist isFinishChain()Z
    .registers 4

    .line 361
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopSplitActivity()Landroid/app/Activity;

    move-result-object v0

    .line 362
    .local v0, "top":Landroid/app/Activity;
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    const/4 v2, 0x1

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsDummySecondActivity:Z

    if-eqz v1, :cond_22

    :cond_d
    sget-object v1, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v2, :cond_22

    if-eqz v0, :cond_22

    .line 363
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    if-eq v0, v1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 362
    :goto_23
    return v2
.end method

.method private blacklist isInUnsplittableList(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 632
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isUnsplittableAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isUnsplittableCategory(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 633
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v0

    if-nez v0, :cond_14

    .line 634
    const/4 v0, 0x0

    return v0

    .line 636
    :cond_14
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsplittable intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiActivitySplitterImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_30
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 640
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist isLandscape()Z
    .registers 4

    .line 416
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_1d

    .line 418
    :cond_c
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1

    .line 417
    :cond_1d
    :goto_1d
    return v1
.end method

.method private blacklist isLastIntent(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "lastIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 646
    return v1

    .line 649
    :cond_5
    const/4 v2, 0x1

    :try_start_6
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v3

    invoke-direct {p0, v3, v2}, Landroid/app/MiuiActivitySplitterImpl;->getIntentInfo(IZ)Landroid/content/Intent;

    move-result-object v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_10

    move-object v0, v3

    .line 652
    goto :goto_18

    .line 650
    :catch_10
    move-exception v3

    .line 651
    .local v3, "remoteException":Landroid/os/RemoteException;
    const-string v4, "MiuiActivitySplitterImpl"

    const-string v5, "LastSplittableActivity FAIL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v3    # "remoteException":Landroid/os/RemoteException;
    :goto_18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 655
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    .line 656
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "miui.extra.splitmode"

    const-string v5, "miui.extra.split.PID"

    if-eqz v3, :cond_2e

    .line 657
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 660
    :cond_2e
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v6

    .line 661
    .local v6, "lastBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_3a

    .line 662
    invoke-virtual {v6, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 665
    :cond_3a
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    if-nez v3, :cond_50

    .line 666
    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    :cond_50
    if-nez v6, :cond_59

    .line 667
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_59

    goto :goto_5a

    :cond_59
    goto :goto_5b

    :cond_5a
    :goto_5a
    move v1, v2

    .line 665
    :goto_5b
    return v1

    .line 669
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v6    # "lastBundle":Landroid/os/Bundle;
    :cond_5c
    return v1
.end method

.method private blacklist isSameAsTop(Landroid/content/Intent;)Z
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .line 600
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 601
    .local v0, "className":Ljava/lang/String;
    :goto_10
    const-string v1, "com.android.settings.SubSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_35

    .line 602
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 603
    return v2

    .line 605
    :cond_2c
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTopSplit(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 607
    :cond_35
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 608
    return v2

    .line 610
    :cond_4a
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v1

    .line 611
    .local v1, "subIntent":Landroid/content/Intent;
    if-eqz v1, :cond_5f

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 612
    return v2

    .line 614
    :cond_5f
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTopSplit(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private blacklist isSameAsTopSplit(Ljava/lang/String;)Z
    .registers 4
    .param p1, "className"    # Ljava/lang/String;

    .line 619
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopSplitActivityComp()Landroid/content/ComponentName;

    move-result-object v0

    .line 620
    .local v0, "topActivity":Landroid/content/ComponentName;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method private blacklist isSubSettings(Landroid/app/Activity;)Z
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 226
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.SubSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 226
    :goto_1b
    return v0
.end method

.method private blacklist isSubSettings(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.SubSettings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 221
    :goto_19
    return v0
.end method

.method private blacklist isTaskRoot()Z
    .registers 5

    .line 674
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 675
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_11

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_12

    if-gt v3, v2, :cond_11

    move v0, v2

    :cond_11
    return v0

    .line 676
    .end local v1    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_12
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 679
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private blacklist isTopSecondTransferActivity()Z
    .registers 7

    .line 208
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getTopSplitActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    .local v0, "top":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v1

    .line 211
    .local v1, "subIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    if-nez v1, :cond_e

    goto :goto_4b

    .line 214
    :cond_e
    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->isSubSettings(Landroid/content/Intent;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_35

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->isSubSettings(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 215
    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_34

    move v2, v4

    :cond_34
    return v2

    .line 217
    :cond_35
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_4a

    move v2, v4

    :cond_4a
    return v2

    .line 212
    :cond_4b
    :goto_4b
    return v2
.end method

.method private blacklist isTopSplitActivity()Z
    .registers 5

    .line 728
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->isTopSplitActivity(Landroid/os/IBinder;)Z

    move-result v1
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_7} :catch_d

    if-nez v1, :cond_a

    .line 729
    return v0

    .line 734
    :cond_a
    nop

    .line 735
    const/4 v0, 0x1

    return v0

    .line 731
    :catch_d
    move-exception v1

    .line 732
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MiuiActivitySplitterImpl"

    const-string v3, "Get top activity FAIL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    return v0
.end method

.method private blacklist isTopSplitActivity(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    const v0, 0xfffda1

    .line 740
    .local v0, "code":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 741
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 744
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 745
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 746
    .local v3, "isTop":Z
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 748
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-lez v4, :cond_31

    .line 749
    const/4 v3, 0x1

    .line 751
    :cond_31
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 753
    return v3
.end method

.method private blacklist isUnsplittableAction(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 757
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.credentials.INSTALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 759
    const-string v1, "android.credentials.INSTALL_AS_USER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 760
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 761
    const-string v1, "com.android.camera.action.CROP_WALLPAPER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 762
    const-string v1, "com.android.camera.action.CROP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 763
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 764
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 765
    const-string v1, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 766
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 767
    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 768
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 769
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 770
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_77

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filemanager.dir"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    goto :goto_79

    :cond_77
    const/4 v1, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v1, 0x1

    .line 758
    :goto_7a
    return v1
.end method

.method private blacklist isUnsplittableCategory(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 774
    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

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

.method private blacklist judgeClearEntryStack()V
    .registers 3

    .line 778
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_13

    .line 779
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 780
    const-string v0, "MiuiActivitySplitterImpl"

    const-string v1, "Try to clear entry stack."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->clearEntryStack(Z)V

    .line 784
    :cond_13
    return-void
.end method

.method private blacklist markBaseActivity(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 787
    if-eqz p1, :cond_e

    .line 788
    nop

    .line 789
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 788
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 791
    :cond_e
    return-object p1
.end method

.method private blacklist needCancelSplit(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 795
    const/4 v0, 0x0

    .line 796
    .local v0, "cancelSplit":Z
    if-nez p1, :cond_4

    .line 797
    return v0

    .line 800
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1b

    .line 801
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isInUnsplittableList(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    .line 802
    :cond_1b
    const/4 v0, 0x1

    .line 804
    :cond_1c
    return v0
.end method

.method private blacklist needReduceActivity(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 808
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 809
    return v0

    .line 812
    :cond_4
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v1

    .line 813
    .local v1, "curIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    if-nez v1, :cond_c

    .line 814
    return v2

    .line 817
    :cond_c
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, "comp":Ljava/lang/String;
    if-eqz v3, :cond_1d

    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->getCompName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 819
    return v0

    .line 821
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 822
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_2d

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2d
    move v0, v2

    :cond_2e
    return v0
.end method

.method public static blacklist needSplit(Landroid/content/Intent;)Z
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 826
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private blacklist popSplitActivityFromStack()V
    .registers 3

    .line 839
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V

    .line 840
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 841
    return-void
.end method

.method private blacklist redirectIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 844
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 845
    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    :cond_17
    return-void
.end method

.method private blacklist reduceActionBar()V
    .registers 4

    .line 850
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_7

    .line 852
    return-void

    .line 854
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 855
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 856
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    return-void
.end method

.method private blacklist releaseIfNeed()V
    .registers 3

    .line 860
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRecycled:Z

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isControllerShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_3b

    .line 864
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRecycled:Z

    .line 865
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_22

    .line 866
    sget-object v0, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 867
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 868
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 869
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->resetFirsetTimeStart()V

    goto :goto_3a

    .line 871
    :cond_22
    sget-object v0, Landroid/app/MiuiActivitySplitterImpl;->sInstanceMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isSplitSecondActivity()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 873
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->popSplitActivityFromStack()V

    .line 876
    :cond_3a
    :goto_3a
    return-void

    .line 861
    :cond_3b
    :goto_3b
    return-void
.end method

.method private blacklist removeCancelFlagInner(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 879
    if-eqz p1, :cond_b

    .line 880
    invoke-virtual {p1}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setMiuiFlags(I)Landroid/content/Intent;

    .line 882
    :cond_b
    return-void
.end method

.method private blacklist removeFromEntryStack(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    const v0, 0xfffda2

    .line 886
    .local v0, "code":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 887
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 891
    .local v2, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 892
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 895
    return-void
.end method

.method private blacklist resetFirsetTimeStart()V
    .registers 2

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsFirstTimeStart:Z

    .line 899
    return-void
.end method

.method private blacklist scheduleDelayRestartLastContent(Z)V
    .registers 7
    .param p1, "isFromConfigChange"    # Z

    .line 902
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V

    .line 903
    move v0, p1

    .line 904
    .local v0, "fromConfigChange":I
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 905
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 906
    return-void
.end method

.method private blacklist setActionBarButton(Z)V
    .registers 6
    .param p1, "isEnable"    # Z

    .line 909
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_7

    .line 910
    return-void

    .line 912
    :cond_7
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getActionBarView()Landroid/view/View;

    move-result-object v0

    .line 913
    .local v0, "abLayout":Landroid/view/View;
    if-nez v0, :cond_e

    .line 914
    return-void

    .line 916
    :cond_e
    const v1, 0x1020581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 917
    .local v1, "up":Landroid/view/View;
    if-eqz v1, :cond_3c

    .line 918
    iget v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mUpButtonVisibility:I

    if-gez v2, :cond_21

    .line 919
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mUpButtonVisibility:I

    .line 921
    :cond_21
    if-nez p1, :cond_2e

    .line 922
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_3c

    .line 923
    :cond_2e
    iget v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mUpButtonVisibility:I

    if-nez v2, :cond_3c

    .line 924
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 927
    :cond_3c
    :goto_3c
    return-void
.end method

.method private blacklist setBaseActivity()V
    .registers 2

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    .line 931
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->markBaseActivity(Landroid/content/Intent;)Landroid/content/Intent;

    .line 932
    return-void
.end method

.method private blacklist setControllerShowingValue(Z)V
    .registers 2
    .param p1, "isShowing"    # Z

    .line 935
    iput-boolean p1, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsControllerShowing:Z

    .line 936
    return-void
.end method

.method private blacklist setCurrentSubIntent(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 940
    :try_start_0
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/MiuiActivitySplitterImpl;->setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 943
    goto :goto_12

    .line 941
    :catch_a
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiActivitySplitterImpl"

    const-string v2, "Record sub-intent info fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method private blacklist setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .param p4, "isForLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    const v0, 0xfffda6

    .line 948
    .local v0, "code":I
    move v1, p4

    .line 949
    .local v1, "forLast":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 950
    .local v2, "data":Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 952
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 954
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 956
    .local v4, "reply":Landroid/os/Parcel;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, v0, v2, v4, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 957
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 958
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 959
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 960
    return-void
.end method

.method private blacklist setLastSplittableActivity(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 964
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getIntentBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/app/MiuiActivitySplitterImpl;->setIntentInfo(Landroid/content/Intent;ILandroid/os/Bundle;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    .line 967
    goto :goto_12

    .line 965
    :catch_a
    move-exception v0

    .line 966
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MiuiActivitySplitterImpl"

    const-string v2, "Record activity info fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public static blacklist setNotSplit(Landroid/content/Intent;)V
    .registers 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 971
    if-eqz p0, :cond_7

    .line 972
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 974
    :cond_7
    return-void
.end method

.method private blacklist setSecondStageIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 977
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1e

    .line 980
    :cond_b
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setLastSplittableActivity(Landroid/content/Intent;)V

    .line 981
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;

    .line 982
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 983
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;

    .line 985
    :cond_1a
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 986
    return-void

    .line 978
    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist setSubIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 989
    if-eqz p1, :cond_12

    const/4 v0, 0x0

    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_12

    .line 990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 991
    return-void

    .line 993
    :cond_12
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setCurrentSubIntent(Landroid/content/Intent;)V

    .line 994
    return-void
.end method

.method private blacklist setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 997
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_10

    .line 998
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    .line 997
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method private blacklist setToExitTogether(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1002
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_10

    .line 1003
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    .line 1002
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method private blacklist setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1007
    if-eqz p1, :cond_13

    .line 1008
    nop

    .line 1009
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    .line 1008
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1010
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 1012
    :cond_13
    return-object p1
.end method

.method private blacklist splitActivity(Z)V
    .registers 10
    .param p1, "isFromConfigChange"    # Z

    .line 1016
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    const-string v1, "MiuiActivitySplitterImpl"

    if-nez v0, :cond_e

    .line 1017
    const-string v0, "Not support split, return"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    return-void

    .line 1020
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    .line 1021
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin to split activity, is from config change ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_2b
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1025
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "miui.intent.extra.SPLIT_REGION"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1026
    .local v2, "parcelable":Landroid/os/Parcelable;
    const/4 v3, 0x0

    .line 1027
    .local v3, "rect":Landroid/graphics/Rect;
    instance-of v4, v2, Landroid/graphics/Rect;

    if-eqz v4, :cond_49

    .line 1028
    move-object v3, v2

    check-cast v3, Landroid/graphics/Rect;

    .line 1030
    :cond_49
    if-eqz v3, :cond_af

    .line 1031
    const v4, 0x800033

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1032
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1033
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1034
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1035
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1036
    iget-boolean v4, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v4, :cond_10c

    .line 1037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rect left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", right "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", top "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bottom "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10c

    .line 1040
    :cond_af
    iget v4, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_b8

    if-eqz p1, :cond_be

    .line 1041
    :cond_b8
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getContentWeight(Z)F

    move-result v4

    iput v4, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 1043
    :cond_be
    const v4, 0x800003

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1044
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v4

    .line 1045
    .local v4, "winWidth":I
    iget v5, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    int-to-float v6, v4

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1046
    .local v5, "contentWidth":I
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isRtlLocale()Z

    move-result v6

    if-nez v6, :cond_df

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isRtlLayout()Z

    move-result v6

    if-eqz v6, :cond_dc

    goto :goto_df

    :cond_dc
    sub-int v6, v4, v5

    goto :goto_e0

    :cond_df
    :goto_df
    const/4 v6, 0x0

    :goto_e0
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1047
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1048
    iget-boolean v6, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v6, :cond_10c

    .line 1049
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,window width "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .end local v4    # "winWidth":I
    .end local v5    # "contentWidth":I
    :cond_10c
    :goto_10c
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1053
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 1054
    return-void
.end method


# virtual methods
.method public blacklist adjustToFullScreen()V
    .registers 3

    .line 1057
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1058
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1059
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1060
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1061
    return-void
.end method

.method public blacklist adjustToSplitScreen()V
    .registers 2

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->splitActivity(Z)V

    .line 1066
    return-void
.end method

.method public blacklist adjustWindow(I)V
    .registers 5
    .param p1, "width"    # I

    .line 1069
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1070
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentWindowWidth()I

    move-result v1

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1071
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1072
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v1, :cond_31

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust content view, set width to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiActivitySplitterImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_31
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1076
    return-void
.end method

.method public blacklist adjustWindow(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1079
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1080
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1081
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1082
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1083
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1084
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1085
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1086
    return-void
.end method

.method public blacklist cancelSplit(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1089
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 1090
    return-void
.end method

.method public blacklist checkAllContentGone()Z
    .registers 4

    .line 1093
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1094
    return v1

    .line 1097
    :cond_6
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    if-nez v0, :cond_32

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1098
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_26

    .line 1099
    const-string v0, "MiuiActivitySplitterImpl"

    const-string v1, "AllContentGone."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_26
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1102
    .local v0, "subIntent":Landroid/content/Intent;
    if-eqz v0, :cond_31

    .line 1103
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1105
    :cond_31
    return v2

    .line 1107
    .end local v0    # "subIntent":Landroid/content/Intent;
    :cond_32
    iput-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    .line 1108
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 1109
    return v1
.end method

.method public blacklist clearIllegalSplitActivity()V
    .registers 1

    .line 1113
    return-void
.end method

.method public blacklist finishAllSubActivities()V
    .registers 2

    .line 1116
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_5

    .line 1117
    return-void

    .line 1120
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->clearEntryStack(Z)V

    .line 1121
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 1122
    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    .line 1123
    return-void
.end method

.method public blacklist getActionBarView()Landroid/view/View;
    .registers 3

    .line 1126
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1129
    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCurrentSubIntent()Landroid/content/Intent;
    .registers 8

    .line 1134
    const-string v0, "ssid"

    const-string v1, "wifi_start_connect_ssid"

    const-string v2, "MiuiActivitySplitterImpl"

    const/4 v3, 0x0

    :try_start_7
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getBasePid()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Landroid/app/MiuiActivitySplitterImpl;->getIntentInfo(IZ)Landroid/content/Intent;

    move-result-object v4

    .line 1135
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_30

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1136
    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 1137
    invoke-virtual {v4, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1139
    :cond_27
    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 1140
    invoke-virtual {v4, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1143
    :cond_30
    if-eqz v4, :cond_95

    .line 1144
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_39

    .line 1145
    return-object v4

    .line 1148
    :cond_39
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_3e

    .line 1149
    return-object v4

    .line 1151
    :cond_3e
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getLastResumedActivity()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1152
    .local v0, "lastResumedInfo":Landroid/content/pm/ActivityInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentSubIntent lastResumedInfo:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", intent.getComponent:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", mActivity:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    if-nez v0, :cond_75

    .line 1154
    return-object v3

    .line 1157
    :cond_75
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1158
    return-object v4

    .line 1161
    :cond_84
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_92} :catch_96

    if-eqz v1, :cond_95

    .line 1162
    return-object v4

    .line 1165
    .end local v0    # "lastResumedInfo":Landroid/content/pm/ActivityInfo;
    :cond_95
    return-object v3

    .line 1166
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_96
    move-exception v0

    .line 1167
    .local v0, "remoteException":Landroid/os/RemoteException;
    const-string v1, "LastSplittableActivity FAIL!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    return-object v3
.end method

.method public blacklist handleBackPressed()V
    .registers 2

    .line 1174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsBackPressed:Z

    .line 1175
    return-void
.end method

.method public blacklist handleJumpActivity(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1210
    return-void
.end method

.method public blacklist hideAllContent()V
    .registers 2

    .line 1178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->clearEntryStack(Z)V

    .line 1179
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 1180
    return-void
.end method

.method public blacklist isControllerShowing()Z
    .registers 2

    .line 1183
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsControllerShowing:Z

    return v0
.end method

.method public blacklist isDuplicateSplittableActivity(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1187
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const/4 v1, 0x1

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isNeedPerformAction()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTop(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1188
    return v1

    .line 1190
    :cond_12
    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 1191
    return v0

    .line 1193
    :cond_16
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->redirectIntent(Landroid/content/Intent;)V

    .line 1194
    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v2, :cond_2a

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->isLastIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v1, v0

    :goto_2b
    return v1
.end method

.method protected blacklist isNeedPerformAction()Z
    .registers 5

    .line 1198
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mEventDelayTimeBegin:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 1199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 1200
    const-string v0, "MiuiActivitySplitterImpl"

    const-string v1, "click is too often, ignored in 500ms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x0

    return v0

    .line 1204
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mEventDelayTimeBegin:J

    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isRtlLayout()Z
    .registers 3

    .line 1219
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 1220
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 1219
    :goto_1d
    return v1
.end method

.method public blacklist isRtlLocale()Z
    .registers 3

    .line 1213
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1214
    .local v0, "currentLang":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "fa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 1215
    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ur"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "ug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v1, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v1, 0x1

    .line 1214
    :goto_34
    return v1
.end method

.method public blacklist isSplitBaseActivity()Z
    .registers 2

    .line 1224
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    return v0
.end method

.method public blacklist isSplitMode()Z
    .registers 2

    .line 1228
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    return v0
.end method

.method public blacklist isSplitSecondActivity()Z
    .registers 2

    .line 1232
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsDummySecondActivity:Z

    if-eqz v0, :cond_12

    :cond_8
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public blacklist needSplitActivity()Z
    .registers 2

    .line 1236
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist needSplitActivity(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1240
    const-string v0, "MiuiActivitySplitterImpl"

    const/4 v1, 0x0

    .line 1241
    .local v1, "isCanSplit":Z
    if-eqz p1, :cond_45

    .line 1243
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_20

    .line 1244
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "miui.extra.splitmode"

    .line 1245
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_20

    :cond_1e
    const/4 v2, 0x1

    goto :goto_21

    :cond_20
    move v2, v3

    :goto_21
    move v1, v2

    .line 1246
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->checkSecondStage(Landroid/content/Intent;)V

    .line 1247
    if-nez v1, :cond_2a

    .line 1248
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->disposeFakeActivity(Landroid/content/Intent;)V

    .line 1250
    :cond_2a
    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v2, :cond_45

    .line 1251
    if-eqz v1, :cond_34

    .line 1252
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    goto :goto_45

    .line 1254
    :cond_34
    invoke-virtual {p0, v3}, Landroid/app/MiuiActivitySplitterImpl;->setExitWhenContentGone(Z)V
    :try_end_37
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_37} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_45

    .line 1259
    :catch_38
    move-exception v2

    .line 1260
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, " needSplitActivity parcel err!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 1257
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_3f
    move-exception v2

    .line 1258
    .local v2, "e":Landroid/os/BadParcelableException;
    const-string v3, " needSplitActivity parcel fail!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    .end local v2    # "e":Landroid/os/BadParcelableException;
    :cond_45
    :goto_45
    return v1
.end method

.method public blacklist notSupportSplit()Z
    .registers 2

    .line 1267
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onSplitActivityConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 1271
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    const-string v1, "MiuiActivitySplitterImpl"

    if-eqz v0, :cond_b

    .line 1272
    const-string v0, "In onConfigurationChanged."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :cond_b
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    .line 1275
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1276
    invoke-direct {p0, v2}, Landroid/app/MiuiActivitySplitterImpl;->getContentWeight(Z)F

    .line 1277
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView()V

    .line 1278
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_65

    .line 1279
    const-string v0, "Try to start subintent from onConfigChanged"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1285
    :cond_26
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_36

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1286
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1288
    :cond_36
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceIndexView()V

    goto :goto_65

    .line 1290
    :cond_3a
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1291
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1292
    invoke-direct {p0, v2}, Landroid/app/MiuiActivitySplitterImpl;->splitActivity(Z)V

    goto :goto_65

    .line 1294
    :cond_4a
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTop(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_62

    .line 1295
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1296
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1298
    :cond_62
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceActivity()V

    .line 1301
    :cond_65
    :goto_65
    return-void
.end method

.method public blacklist onSplitActivityDestroy()V
    .registers 1

    .line 1304
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->releaseIfNeed()V

    .line 1305
    return-void
.end method

.method public blacklist onSplitActivityNewIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1308
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 1309
    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    .line 1312
    :cond_7
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    if-eqz v0, :cond_1f

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1313
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needReduceActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1314
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceActivity()V

    goto :goto_2c

    .line 1316
    :cond_1f
    invoke-virtual {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    if-nez v0, :cond_2c

    .line 1317
    invoke-direct {p0, v1}, Landroid/app/MiuiActivitySplitterImpl;->splitActivity(Z)V

    .line 1319
    :cond_2c
    :goto_2c
    return-void
.end method

.method public blacklist onSplitActivityRestart()V
    .registers 2

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRestart:Z

    .line 1323
    return-void
.end method

.method public blacklist pushSplitActivityToStack()V
    .registers 5

    .line 830
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V

    .line 831
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsDummySecondActivity:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_13

    .line 832
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->getDelayTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_18

    .line 834
    :cond_13
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 836
    :goto_18
    return-void
.end method

.method public blacklist reachSplitSize()Z
    .registers 2

    .line 1326
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 1327
    invoke-static {v0}, Landroid/util/MiuiFreeformUtils;->needSplitInFreeform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_10
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/MiuiSplitUtils;->isNeedSplit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 1326
    :goto_1b
    return v0
.end method

.method public blacklist reduceActivity()V
    .registers 4

    .line 1331
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplit:Z

    .line 1332
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1333
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1334
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1335
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1336
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1337
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1338
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_29

    .line 1339
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setActionBarButton(Z)V

    .line 1341
    :cond_29
    return-void
.end method

.method public blacklist reduceIndexView()V
    .registers 3

    .line 1344
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1345
    return-void

    .line 1347
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1348
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1349
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceActionBar()V

    .line 1351
    return-void
.end method

.method public blacklist removeCancelFlag(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1354
    if-eqz p1, :cond_b

    .line 1355
    invoke-virtual {p1}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setMiuiFlags(I)Landroid/content/Intent;

    .line 1357
    :cond_b
    return-void
.end method

.method public blacklist restartLastContentIfNeeded()V
    .registers 2

    .line 1360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->scheduleDelayRestartLastContent(Z)V

    .line 1361
    return-void
.end method

.method public blacklist setActivityInfo(Landroid/app/Activity;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1364
    if-eqz p1, :cond_d

    if-nez p2, :cond_5

    goto :goto_d

    .line 1367
    :cond_5
    iput-object p1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    .line 1368
    iput-object p2, p0, Landroid/app/MiuiActivitySplitterImpl;->mToken:Landroid/os/IBinder;

    .line 1369
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsRecycled:Z

    .line 1370
    return-void

    .line 1365
    :cond_d
    :goto_d
    return-void
.end method

.method public blacklist setControllerShowing(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .line 1373
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set controller showing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiActivitySplitterImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_28
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setControllerShowingValue(Z)V

    .line 1377
    return-void
.end method

.method public blacklist setExitWhenContentGone(Z)V
    .registers 5
    .param p1, "isExit"    # Z

    .line 1380
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1381
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_d

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setToExitTogether(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_11

    :cond_d
    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->setToExitAlone(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 1382
    .local v1, "exitIntent":Landroid/content/Intent;
    :goto_11
    if-eqz v1, :cond_18

    .line 1383
    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1385
    :cond_18
    return-void
.end method

.method public blacklist setFirstIntent(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1388
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1389
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 1390
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    .line 1392
    :cond_12
    return-void
.end method

.method public blacklist setLastReportedMultiWindowMode(Z)V
    .registers 6
    .param p1, "isNewValue"    # Z

    .line 1395
    iput-boolean p1, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsLastReportedMultiWindowMode:Z

    .line 1396
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->sIsExitMuitiWindowModeJustRecent:Z

    .line 1397
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    const-string v1, "MiuiActivitySplitterImpl"

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 1398
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1399
    invoke-direct {p0, v2}, Landroid/app/MiuiActivitySplitterImpl;->getContentWeight(Z)F

    .line 1400
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView()V

    .line 1401
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_62

    .line 1402
    const-string v0, "Try to start subintent from setLastReportedMultiWindowMode()"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 1408
    :cond_23
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_33

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1409
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1411
    :cond_33
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceIndexView()V

    goto :goto_62

    .line 1413
    :cond_37
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1414
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1415
    invoke-direct {p0, v2}, Landroid/app/MiuiActivitySplitterImpl;->splitActivity(Z)V

    goto :goto_62

    .line 1417
    :cond_47
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->isSameAsTop(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5f

    .line 1418
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1421
    :cond_5f
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reduceActivity()V

    .line 1424
    :cond_62
    :goto_62
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    if-eqz v0, :cond_70

    if-nez p1, :cond_70

    .line 1425
    const-string v0, "setLastReportedMultiWindowMode to false and restartLastContentIfNeeded!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-direct {p0, v2}, Landroid/app/MiuiActivitySplitterImpl;->scheduleDelayRestartLastContent(Z)V

    .line 1428
    :cond_70
    return-void
.end method

.method public blacklist setResumed(Z)V
    .registers 6
    .param p1, "isSetResumed"    # Z

    .line 1431
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-nez v0, :cond_9

    .line 1432
    return-void

    .line 1435
    :cond_9
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    const-string v1, "MiuiActivitySplitterImpl"

    if-eqz v0, :cond_31

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set resumed to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_31
    iput-boolean p1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    .line 1441
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_7a

    .line 1442
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_53

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResumed, Base window splitted? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :cond_53
    const/4 v0, 0x5

    if-eqz p1, :cond_6b

    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    if-nez v1, :cond_6b

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 1446
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->checkSplitHandler()V

    .line 1447
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7a

    .line 1449
    :cond_6b
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7a

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1450
    iget-object v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1454
    :cond_7a
    :goto_7a
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_99

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1455
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsResumed:Z

    if-eqz v0, :cond_91

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsFinishing:Z

    .line 1458
    :cond_91
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mSplitHandler:Landroid/os/Handler;

    if-eqz v0, :cond_99

    .line 1459
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1462
    :cond_99
    return-void
.end method

.method public blacklist setSplit()V
    .registers 5

    .line 1465
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->setBaseActivity()V

    .line 1466
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_c

    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    goto :goto_e

    :cond_c
    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 1467
    .local v0, "leftWeight":I
    :goto_e
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_17

    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_19

    :cond_17
    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 1473
    .local v1, "rightWeight":I
    :goto_19
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-int v3, v0, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 1474
    return-void
.end method

.method public blacklist setSplit(F)V
    .registers 2
    .param p1, "contentWeight"    # F

    .line 1477
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->setBaseActivity()V

    .line 1478
    iput p1, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 1479
    return-void
.end method

.method public blacklist setSplit(Landroid/view/View;)V
    .registers 7
    .param p1, "contentIndexView"    # Landroid/view/View;

    .line 1482
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->setBaseActivity()V

    .line 1483
    iput-object p1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    .line 1484
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_e

    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_LEFT_WEIGHT:I

    goto :goto_10

    :cond_e
    sget v0, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LEFT_WEIGHT:I

    .line 1485
    .local v0, "leftWeight":I
    :goto_10
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_19

    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_LANDSCAPE_RIGHT_WEIGHT:I

    goto :goto_1b

    :cond_19
    sget v1, Landroid/app/MiuiActivitySplitterImpl;->DEFAULT_RIGHT_WEIGHT:I

    .line 1490
    .local v1, "rightWeight":I
    :goto_1b
    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    add-int v4, v0, v1

    int-to-float v4, v4

    div-float/2addr v2, v4

    iput v2, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    .line 1491
    sub-float/2addr v3, v2

    iput v3, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 1492
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView()V

    .line 1493
    return-void
.end method

.method public blacklist setSplit(Landroid/view/View;F)V
    .registers 4
    .param p1, "contentIndexView"    # Landroid/view/View;
    .param p2, "weight"    # F

    .line 1496
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->setBaseActivity()V

    .line 1497
    iput-object p1, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexView:Landroid/view/View;

    .line 1498
    iput p2, p0, Landroid/app/MiuiActivitySplitterImpl;->sContentIndexViewWeight:F

    .line 1499
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    .line 1500
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->adjustContentIndexView()V

    .line 1501
    return-void
.end method

.method public blacklist setSplitActivityOrientation(I)V
    .registers 2
    .param p1, "requestedOrientation"    # I

    .line 1504
    return-void
.end method

.method public blacklist setSplitDeviceSize(DD)V
    .registers 8
    .param p1, "landSplitLimit"    # D
    .param p3, "portSplitLimit"    # D

    .line 1507
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 1508
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v2, 0x1

    aput-wide p3, v1, v2

    const-string v2, "extras_miui_split_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 1510
    :cond_1c
    return-void
.end method

.method public blacklist setSplittableIfNeeded(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1513
    const-string v0, "MiuiActivitySplitterImpl"

    if-nez p1, :cond_1d

    .line 1514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent null when set splittable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return-void

    .line 1518
    :cond_1d
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 1519
    const-string v1, "Set splittable if needed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_26
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllSubFinished:Z

    .line 1523
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v1, :cond_54

    .line 1524
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v1, :cond_47

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need split for intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_47
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSecondStageIntent(Landroid/content/Intent;)V

    .line 1528
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "miui.extra.split.PID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_85

    .line 1529
    :cond_54
    iget v1, p0, Landroid/app/MiuiActivitySplitterImpl;->mContentWindowWeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_61

    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->needSplitActivity()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1530
    :cond_61
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->needCancelSplit(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 1531
    return-void

    .line 1533
    :cond_68
    iget-boolean v1, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v1, :cond_82

    .line 1534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set splittable for intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_82
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 1538
    :cond_85
    :goto_85
    return-void
.end method

.method public blacklist setTargetIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1541
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setToSecondaryStage(Landroid/content/Intent;)Landroid/content/Intent;

    .line 1542
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->setSubIntent(Landroid/content/Intent;)V

    .line 1543
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->deliverExtraInfo(Landroid/content/Intent;)V

    .line 1544
    return-void
.end method

.method public blacklist setToForceSplit(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1547
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_10

    .line 1548
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    .line 1547
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public blacklist setToSubIntentOne(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1552
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_10

    .line 1553
    :cond_4
    invoke-direct {p0, p1}, Landroid/app/MiuiActivitySplitterImpl;->getSplitModeValue(Landroid/content/Intent;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    .line 1552
    const-string v1, "miui.extra.splitmode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public blacklist splitActivityFinish()V
    .registers 3

    .line 1557
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->finishAssociatedActivities()V

    .line 1558
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsAllContentGone:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSecondStageActivity:Z

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->isBaseActivityNeedExit()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1559
    :cond_11
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 1560
    const-string v0, "MiuiActivitySplitterImpl"

    const-string v1, "Clear LastActivity."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_1c
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->clearSplittableInfo()V

    .line 1564
    :cond_1f
    invoke-direct {p0}, Landroid/app/MiuiActivitySplitterImpl;->releaseIfNeed()V

    .line 1565
    iget-boolean v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mIsSplitBaseActivity:Z

    if-eqz v0, :cond_2f

    .line 1566
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->finishAllSubActivities()V

    .line 1567
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1569
    :cond_2f
    return-void
.end method

.method public blacklist splitActivityIfNeeded()V
    .registers 2

    .line 1572
    invoke-virtual {p0}, Landroid/app/MiuiActivitySplitterImpl;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1573
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->splitActivity(Z)V

    .line 1575
    :cond_a
    iget-object v0, p0, Landroid/app/MiuiActivitySplitterImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/MiuiActivitySplitterImpl;->handleSplitActivityStack(Landroid/content/Intent;)V

    .line 1576
    return-void
.end method
