.class public Landroid/os/TurboSchedMonitorImpl;
.super Ljava/lang/Object;
.source "TurboSchedMonitorImpl.java"

# interfaces
.implements Landroid/os/TurboSchedMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TurboSchedMonitorImpl$CoreAppType;
    }
.end annotation


# static fields
.field private static blacklist BOOST_DURATION:J = 0x0L

.field private static final blacklist BOOST_MODE:I = 0x0

.field private static blacklist BOOST_THERMAL_LIMIT_DURATION:J = 0x0L

.field private static final blacklist BOOST_THERMAL_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_message/boost"

.field private static final blacklist COREAPP_INDEX_ARTICLE_NEWS:I = 0x3

.field private static final blacklist COREAPP_INDEX_AWEME:I = 0x0

.field private static final blacklist COREAPP_INDEX_BILIBILI:I = 0x6

.field private static final blacklist COREAPP_INDEX_GIFMAKER:I = 0x1

.field private static final blacklist COREAPP_INDEX_TAOBAO:I = 0x4

.field private static final blacklist COREAPP_INDEX_WECHAT:I = 0x5

.field private static final blacklist COREAPP_INDEX_WEIBO:I = 0x2

.field private static blacklist CORE_TOP20_APP_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_CORE_APP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist METIS_DEV_PATH:Ljava/lang/String; = "/dev/metis"

.field private static final blacklist METIS_IOCTL_FRAME_BOOST_TOKEN:I = 0x6

.field private static final blacklist METIS_IOCTL_GET_UI_TOKEN:I = 0x0

.field private static final blacklist METIS_IOCTL_RELEASE_UI_TOKEN:I = 0x3

.field private static final blacklist PROCESS_ALIPAY:Ljava/lang/String; = "com.eg.android.AlipayGphone"

.field private static final blacklist PROCESS_ARTICLE_LITE:Ljava/lang/String; = "com.ss.android.article.lite"

.field private static final blacklist PROCESS_ARTICLE_NEWS:Ljava/lang/String; = "com.ss.android.article.news"

.field private static final blacklist PROCESS_ARTICLE_VIDEO:Ljava/lang/String; = "com.ss.android.article.video"

.field private static final blacklist PROCESS_AWEME:Ljava/lang/String; = "com.ss.android.ugc.aweme"

.field private static final blacklist PROCESS_AWEME_LITE:Ljava/lang/String; = "com.ss.android.ugc.aweme.lite"

.field private static final blacklist PROCESS_BAIDU:Ljava/lang/String; = "com.baidu.searchbox"

.field private static final blacklist PROCESS_BILIBILI:Ljava/lang/String; = "tv.danmaku.bili"

.field private static final blacklist PROCESS_DRAGON_READ:Ljava/lang/String; = "com.dragon.read"

.field private static final blacklist PROCESS_GIFMAKER:Ljava/lang/String; = "com.smile.gifmaker"

.field private static final blacklist PROCESS_KMXS_READER:Ljava/lang/String; = "com.kmxs.reader"

.field private static final blacklist PROCESS_KUAISHOU_NEBULA:Ljava/lang/String; = "com.kuaishou.nebula"

.field private static final blacklist PROCESS_MOBILEQQ:Ljava/lang/String; = "com.tencent.mobileqq"

.field private static final blacklist PROCESS_MOBILEQQ_QZONE:Ljava/lang/String; = "com.tencent.mobileqq:qzone"

.field private static final blacklist PROCESS_PINDUODUO:Ljava/lang/String; = "com.xunmeng.pinduoduo"

.field private static final blacklist PROCESS_QIYI:Ljava/lang/String; = "com.qiyi.video"

.field private static final blacklist PROCESS_TAOBAO:Ljava/lang/String; = "com.taobao.taobao"

.field private static final blacklist PROCESS_TENCENT_MTT:Ljava/lang/String; = "com.tencent.mtt"

.field private static final blacklist PROCESS_TENCENT_QQLIVE:Ljava/lang/String; = "com.tencent.qqlive"

.field private static final blacklist PROCESS_UCMOBILE:Ljava/lang/String; = "com.UCMobile"

.field private static final blacklist PROCESS_WECHAT:Ljava/lang/String; = "com.tencent.mm"

.field private static final blacklist PROCESS_WEIBO:Ljava/lang/String; = "com.sina.weibo"

.field private static final blacklist RESTRICT_MODE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "TurboSchedMonitor"

.field private static final blacklist TAG_FRAME_BOOST:Ljava/lang/String; = "TurboSchedMonitor_FrameTurbo"

.field private static final blacklist THRESHOLD_DO_FRAME_DELAY:F = 0.5f

.field private static blacklist THRESHOLD_FRAME_DELAY_ARTICLE_NEWS:F

.field private static blacklist THRESHOLD_FRAME_DELAY_AWEME:F

.field private static blacklist THRESHOLD_FRAME_DELAY_BILIBILI:F

.field private static blacklist THRESHOLD_FRAME_DELAY_GIFMAKER:F

.field private static blacklist THRESHOLD_FRAME_DELAY_TAOBAO:F

.field private static blacklist THRESHOLD_FRAME_DELAY_WECHAT:F

.field private static blacklist THRESHOLD_FRAME_DELAY_WEIBO:F

.field private static final blacklist VSYNC_OFFSET_TIME_NS:J

.field private static blacklist mGestureDetector:Landroid/view/GestureDetector;


# instance fields
.field private blacklist DEBUG_DO_FRAMES:Z

.field private blacklist ENABLE_CORE_APP_OPTIMIZER:Z

.field private blacklist POLICY_LIST:Ljava/lang/String;

.field private blacklist mBoostAllowed:Z

.field private blacklist mCheckForegroundCount:I

.field private blacklist mCoreAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentProcessName:Ljava/lang/String;

.field private blacklist mCurrentThreadName:Ljava/lang/String;

.field private blacklist mCurrentTurboScene:Ljava/lang/String;

.field private blacklist mForegroundActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrameDelayTask:Ljava/util/TimerTask;

.field private blacklist mFrameDelayTimer:Ljava/util/Timer;

.field private blacklist mFrameId:I

.field private blacklist mFrameTurboMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mFrameTurboSceneCallback:Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

.field private blacklist mGaeaEnable:Z

.field private blacklist mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private blacklist mHasBoosted:Z

.field private blacklist mHasFrameBoost:Z

.field private blacklist mIsDrawFrameFinished:Z

.field private blacklist mIsOnScroll:Z

.field private blacklist mIsUIThreadRunning:Z

.field private blacklist mLastCheckedThreadName:Ljava/lang/String;

.field private blacklist mLastFrameInterval:J

.field private blacklist mLastScrollTime:J

.field private blacklist mLastVsyncId:J

.field private blacklist mPermissionChecked:Z

.field private blacklist mPrefixWhitelistOfGifmaker:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mScrollDelayTask:Ljava/util/TimerTask;

.field private blacklist mScrollTimer:Ljava/util/Timer;

.field private blacklist mService:Lmiui/turbosched/ITurboSchedManager;

.field private blacklist mSupportGaea:Z

.field private blacklist mThermalBreakEnabled:Z

.field private blacklist mTidSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTids:[I

.field private blacklist mVsyncId:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG_DO_FRAMES(Landroid/os/TurboSchedMonitorImpl;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentTurboScene(Landroid/os/TurboSchedMonitorImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameId(Landroid/os/TurboSchedMonitorImpl;)I
    .registers 1

    iget p0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastScrollTime(Landroid/os/TurboSchedMonitorImpl;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastScrollTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScrollDelayTask(Landroid/os/TurboSchedMonitorImpl;)Ljava/util/TimerTask;
    .registers 1

    iget-object p0, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollDelayTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentTurboScene(Landroid/os/TurboSchedMonitorImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsOnScroll(Landroid/os/TurboSchedMonitorImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/os/TurboSchedMonitorImpl;->mIsOnScroll:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScrollDelayTask(Landroid/os/TurboSchedMonitorImpl;Ljava/util/TimerTask;)V
    .registers 2

    iput-object p1, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollDelayTask:Ljava/util/TimerTask;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdoDrawFrameDelay(Landroid/os/TurboSchedMonitorImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/TurboSchedMonitorImpl;->doDrawFrameDelay(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetCurrentProcessName(Landroid/os/TurboSchedMonitorImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misInUIThread(Landroid/os/TurboSchedMonitorImpl;)Z
    .registers 1

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isInUIThread()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOnScrollToTurboSchedService(Landroid/os/TurboSchedMonitorImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/TurboSchedMonitorImpl;->notifyOnScrollToTurboSchedService(Z)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 23

    .line 107
    const-string v0, "com.ss.android.ugc.aweme"

    const-string v1, "com.smile.gifmaker"

    const-string v2, "com.sina.weibo"

    const-string v3, "com.ss.android.article.news"

    const-string v4, "com.taobao.taobao"

    const-string v5, "com.tencent.mm"

    const-string v6, "tv.danmaku.bili"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/os/TurboSchedMonitorImpl;->DEFAULT_CORE_APP_LIST:Ljava/util/List;

    .line 117
    const-string v1, "com.ss.android.ugc.aweme"

    const-string v2, "com.smile.gifmaker"

    const-string v3, "com.sina.weibo"

    const-string v4, "com.ss.android.article.news"

    const-string v5, "com.taobao.taobao"

    const-string v6, "com.tencent.mm"

    const-string v7, "tv.danmaku.bili"

    const-string v8, "com.kuaishou.nebula"

    const-string v9, "com.tencent.mobileqq"

    const-string v10, "com.ss.android.ugc.aweme.lite"

    const-string v11, "com.tencent.qqlive"

    const-string v12, "com.ss.android.article.lite"

    const-string v13, "com.baidu.searchbox"

    const-string v14, "com.xunmeng.pinduoduo"

    const-string v15, "com.UCMobile"

    const-string v16, "com.dragon.read"

    const-string v17, "com.qiyi.video"

    const-string v18, "com.ss.android.article.video"

    const-string v19, "com.eg.android.AlipayGphone"

    const-string v20, "com.tencent.mtt"

    const-string v21, "com.kmxs.reader"

    const-string v22, "com.tencent.mobileqq:qzone"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/os/TurboSchedMonitorImpl;->CORE_TOP20_APP_LIST:Ljava/util/List;

    .line 152
    const-string v0, "persist.sys.turbosched.boost.duration"

    const-string v1, "40"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Landroid/os/TurboSchedMonitorImpl;->BOOST_DURATION:J

    .line 153
    const-string v0, "persist.sys.turbosched.thermal.limit.duration"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Landroid/os/TurboSchedMonitorImpl;->BOOST_THERMAL_LIMIT_DURATION:J

    .line 155
    const-string v0, "persist.sys.turbosched.frame.delay.aweme"

    const-string v1, "0.6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_AWEME:F

    .line 156
    const-string v0, "persist.sys.turbosched.frame.delay.gifmaker"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_GIFMAKER:F

    .line 157
    const-string v0, "persist.sys.turbosched.frame.delay.weibo"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WEIBO:F

    .line 158
    const-string v0, "persist.sys.turbosched.frame.delay.article_news"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_ARTICLE_NEWS:F

    .line 159
    const-string v0, "persist.sys.turbosched.frame.delay.taobao"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_TAOBAO:F

    .line 160
    const-string v0, "persist.sys.turbosched.frame.delay.wechat"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WECHAT:F

    .line 161
    const-string v0, "persist.sys.turbosched.frame.delay.bilibili"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_BILIBILI:F

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    .line 60
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mTidSet:Ljava/util/HashSet;

    .line 62
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasBoosted:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mIsDrawFrameFinished:Z

    .line 64
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTimer:Ljava/util/Timer;

    .line 66
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollTimer:Ljava/util/Timer;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.kwai.component.taskdispatcher.slide.strategy.SlideVsyncMainScatterStrategy"

    const-string v3, "com.kwai.library.widget.viewpager.VerticalViewPager"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mPrefixWhitelistOfGifmaker:Ljava/util/List;

    .line 147
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTopAppList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    .line 163
    const-string v1, "persist.sys.turbosched.debug.frames"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    .line 164
    const-string v1, "persist.sys.turbosched.enable.coreApp.optimizer"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    .line 165
    const-string v1, "persist.sys.turbosched.support.gaea"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mSupportGaea:Z

    .line 166
    const-string v1, "persist.sys.turbosched.gaea.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mGaeaEnable:Z

    .line 167
    const-string v1, "persist.sys.turbosched.policy_list"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->POLICY_LIST:Ljava/lang/String;

    .line 168
    const-string v1, "persist.sys.turbosched.thermal_break.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mThermalBreakEnabled:Z

    .line 170
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    .line 171
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsUIThreadRunning:Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastScrollTime:J

    .line 174
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastFrameInterval:J

    .line 175
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getFrameTurboMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboMap:Ljava/util/Map;

    .line 176
    iput-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mLastCheckedThreadName:Ljava/lang/String;

    .line 177
    iput-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    .line 178
    iput-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentThreadName:Ljava/lang/String;

    .line 179
    const-string v0, "persist.sys.turbosched.frame_turbo.current_turbo_scene"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    .line 898
    new-instance v0, Landroid/os/TurboSchedMonitorImpl$3;

    invoke-direct {v0, p0}, Landroid/os/TurboSchedMonitorImpl$3;-><init>(Landroid/os/TurboSchedMonitorImpl;)V

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 980
    new-instance v0, Landroid/os/TurboSchedMonitorImpl$4;

    invoke-direct {v0, p0}, Landroid/os/TurboSchedMonitorImpl$4;-><init>(Landroid/os/TurboSchedMonitorImpl;)V

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboSceneCallback:Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    return-void
.end method

.method private blacklist allowLaunchAction()Z
    .registers 4

    .line 440
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    const-string v1, "TurboSchedMonitor"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 441
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_10

    .line 442
    const-string v0, "not allow, R: not enable"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_10
    return v2

    .line 446
    :cond_11
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    if-nez v0, :cond_1f

    .line 447
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_1e

    .line 448
    const-string v0, "not allow, R: not allowed"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1e
    return v2

    .line 452
    :cond_1f
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    if-eqz v0, :cond_2d

    .line 453
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_2c

    .line 454
    const-string v0, "not allow, R: already has frame boost"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_2c
    return v2

    .line 458
    :cond_2d
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsUIThreadRunning:Z

    if-nez v0, :cond_3b

    .line 459
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_3a

    .line 460
    const-string v0, "not allow, R: ui thread not running"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_3a
    return v2

    .line 464
    :cond_3b
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isTurboScene()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 465
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_4a

    .line 466
    const-string v0, "not allow, R: not in turbo scene"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_4a
    return v2

    .line 470
    :cond_4b
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist checkBoostPermission()V
    .registers 2

    .line 276
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkFileAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 277
    return-void

    .line 281
    :cond_7
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkCoreAppUIThread()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    return-void

    .line 286
    :cond_e
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkFrameTurbo()Z

    .line 287
    return-void
.end method

.method private blacklist checkCoreAppUIThread()Z
    .registers 6

    .line 305
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/TurboSchedMonitorImpl;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TurboSchedMonitor"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2e

    .line 306
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_29

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBoostPermission not core app: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_29
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 310
    iput-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 311
    return v3

    .line 314
    :cond_2e
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isInUIThread()Z

    move-result v0

    if-nez v0, :cond_57

    .line 315
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_52

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkBoostPermission not ui thread: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_52
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 319
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 320
    return v2

    .line 323
    :cond_57
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-nez v0, :cond_67

    .line 324
    const-string v0, "turbosched"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    .line 327
    :cond_67
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_91

    .line 329
    :try_start_6b
    invoke-interface {v0}, Lmiui/turbosched/ITurboSchedManager;->checkBoostPermission()I

    move-result v0

    .line 330
    .local v0, "ret":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_84

    if-nez v0, :cond_75

    goto :goto_84

    .line 332
    :cond_75
    if-ne v0, v2, :cond_86

    .line 333
    iput-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mLastCheckedThreadName:Ljava/lang/String;

    goto :goto_86

    .line 331
    :cond_84
    :goto_84
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 336
    :cond_86
    :goto_86
    iput-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_88} :catch_89

    .line 337
    return v2

    .line 338
    .end local v0    # "ret":I
    :catch_89
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 340
    iput-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_91
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    return v0
.end method

.method private blacklist checkFileAvailable()Z
    .registers 5

    .line 292
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/metis"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 294
    .local v1, "exist":Z
    if-nez v1, :cond_1e

    .line 295
    iget-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v2, :cond_18

    .line 296
    const-string v2, "TurboSchedMonitor"

    const-string v3, "checkBoostPermission file not exist"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_18
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 299
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 301
    :cond_1e
    return v1
.end method

.method private blacklist checkFrameTurbo()Z
    .registers 4

    .line 349
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->POLICY_LIST:Ljava/lang/String;

    const-string v1, "frame_turbo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    .line 350
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_16

    .line 351
    const-string v0, "TurboSchedMonitor_FrameTurbo"

    const-string v2, "checkBoostPermission not frame turbo"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_16
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 354
    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 355
    return v0

    .line 358
    :cond_1c
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 359
    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 360
    iput-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastCheckedThreadName:Ljava/lang/String;

    .line 364
    :cond_30
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    return v0
.end method

.method private blacklist doDrawFrameDelay(I)V
    .registers 3
    .param p1, "frame"    # I

    .line 533
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasBoosted:Z

    if-eqz v0, :cond_5

    .line 534
    return-void

    .line 536
    :cond_5
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsDrawFrameFinished:Z

    if-nez v0, :cond_f

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasBoosted:Z

    .line 538
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->handleCallbackDelay()V

    .line 540
    :cond_f
    return-void
.end method

.method private blacklist getCurrentProcessName()Ljava/lang/String;
    .registers 3

    .line 661
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "processName":Ljava/lang/String;
    if-nez v0, :cond_9

    const-string v1, ""

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    return-object v1
.end method

.method private blacklist getFrameTurboMap()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboMap:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 940
    return-object v0

    .line 942
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 943
    .local v0, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "persist.sys.turbosched.frame_turbo.apps"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "appListStr":Ljava/lang/String;
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    .line 945
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 946
    .local v2, "appList":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_23
    if-ge v5, v3, :cond_52

    aget-object v6, v2, v5

    .line 947
    .local v6, "app":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, "appConfig":[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v8, "sceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, v7

    const/4 v10, 0x1

    if-le v9, v10, :cond_4a

    .line 950
    aget-object v9, v7, v10

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 951
    .local v9, "scenes":[Ljava/lang/String;
    array-length v10, v9

    move v11, v4

    :goto_40
    if-ge v11, v10, :cond_4a

    aget-object v12, v9, v11

    .line 952
    .local v12, "scene":Ljava/lang/String;
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    .end local v12    # "scene":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_40

    .line 955
    .end local v9    # "scenes":[Ljava/lang/String;
    :cond_4a
    aget-object v9, v7, v4

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .end local v6    # "app":Ljava/lang/String;
    .end local v7    # "appConfig":[Ljava/lang/String;
    .end local v8    # "sceneList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 958
    .end local v2    # "appList":[Ljava/lang/String;
    :cond_52
    iget-boolean v2, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v2, :cond_6e

    .line 959
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrameTurboMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TurboSchedMonitor_FrameTurbo"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_6e
    return-object v0
.end method

.method private blacklist getTopAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 927
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTuboSchedManagerService()V

    .line 928
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_29

    .line 930
    :try_start_7
    invoke-interface {v0}, Lmiui/turbosched/ITurboSchedManager;->getCoreAppList()Ljava/util/List;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return-object v0

    .line 931
    :catch_c
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopAppList meet error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TurboSchedMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_29
    sget-object v0, Landroid/os/TurboSchedMonitorImpl;->DEFAULT_CORE_APP_LIST:Ljava/util/List;

    return-object v0
.end method

.method private blacklist getTuboSchedManagerService()V
    .registers 2

    .line 434
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-nez v0, :cond_10

    .line 435
    const-string v0, "turbosched"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    .line 437
    :cond_10
    return-void
.end method

.method private blacklist handleCallbackDelay()V
    .registers 6

    .line 514
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_12

    .line 515
    const-string v0, "handleCallbackDelay"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 516
    const-string v0, "TurboSchedMonitor"

    const-string v3, "handleCallbackDelay enter, FluencyOptimizer!"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_12
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->allowLaunchAction()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    .line 522
    iget-boolean v3, p0, Landroid/os/TurboSchedMonitorImpl;->mSupportGaea:Z

    if-nez v3, :cond_2a

    .line 523
    sget-wide v3, Landroid/os/TurboSchedMonitorImpl;->BOOST_THERMAL_LIMIT_DURATION:J

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/TurboSchedMonitorImpl;->breakThermlimit(IJ)V

    .line 524
    sget-wide v3, Landroid/os/TurboSchedMonitorImpl;->BOOST_DURATION:J

    long-to-int v0, v3

    invoke-direct {p0, v0}, Landroid/os/TurboSchedMonitorImpl;->metisFrameBoost(I)V

    .line 528
    :cond_2a
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_31

    .line 529
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    :cond_31
    return-void
.end method

.method private blacklist isCoreAppUIThread()Z
    .registers 2

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/TurboSchedMonitorImpl;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isInUIThread()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private blacklist isFrameTurboApp()Z
    .registers 5

    .line 970
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "threadName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 973
    .local v2, "processThreadName":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboMap:Ljava/util/Map;

    if-eqz v3, :cond_30

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_30

    .line 977
    :cond_2e
    const/4 v3, 0x1

    return v3

    .line 974
    :cond_30
    :goto_30
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isInUIThread()Z
    .registers 2

    .line 911
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    return v0
.end method

.method private blacklist isTurboScene()Z
    .registers 10

    .line 475
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsOnScroll:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 476
    return v1

    .line 480
    :cond_12
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->POLICY_LIST:Ljava/lang/String;

    const-string v2, "frame_turbo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_db

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentThreadName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "processThreadName":Ljava/lang/String;
    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    if-nez v3, :cond_46

    .line 483
    const-string v3, "persist.sys.turbosched.turbo_scene"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    .line 485
    :cond_46
    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 486
    .local v3, "turboSceneConfig":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    const-string v6, "TurboSchedMonitor"

    if-eq v4, v5, :cond_71

    .line 487
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v1, :cond_70

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not allow, R: frame turbo scene config error, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_70
    return v2

    .line 492
    :cond_71
    aget-object v4, v3, v2

    .line 493
    .local v4, "currentPTName":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, ", "

    if-nez v5, :cond_a0

    .line 494
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v1, :cond_9f

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not allow, R: not current process turbo scene, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_9f
    return v2

    .line 499
    :cond_a0
    aget-object v5, v3, v1

    .line 500
    .local v5, "sceneId":Ljava/lang/String;
    iget-object v8, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboMap:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    iget-object v8, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboMap:Ljava/util/Map;

    .line 501
    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    .line 502
    return v1

    .line 504
    :cond_b9
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v1, :cond_db

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "not allow, R: not in frame turbo scene, "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0    # "processThreadName":Ljava/lang/String;
    .end local v3    # "turboSceneConfig":[Ljava/lang/String;
    .end local v4    # "currentPTName":Ljava/lang/String;
    .end local v5    # "sceneId":Ljava/lang/String;
    :cond_db
    return v2
.end method

.method private blacklist list2StringWithComma(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 915
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_5

    .line 916
    const-string v0, ""

    return-object v0

    .line 918
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 920
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .end local v2    # "str":Ljava/lang/String;
    goto :goto_e

    .line 923
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist matchLastCheckedThread()Z
    .registers 3

    .line 242
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastCheckedThreadName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastCheckedThreadName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    .line 244
    :cond_1b
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist metisFrameBoost(I)V
    .registers 7
    .param p1, "boostMs"    # I

    .line 368
    const-string v0, "/dev/metis"

    invoke-static {v0}, Landroid/os/NativeTurboSchedManager;->nativeOpenDevice(Ljava/lang/String;)I

    move-result v0

    .line 369
    .local v0, "handle":I
    if-ltz v0, :cond_26

    .line 370
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    const-wide/16 v2, 0x40

    if-eqz v1, :cond_18

    .line 371
    const-string v1, "metisFrameBoost"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 372
    const-string v4, "TurboSchedMonitor"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_18
    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/NativeTurboSchedManager;->nativeIoctlDevice(II)V

    .line 376
    invoke-static {v0}, Landroid/os/NativeTurboSchedManager;->nativeCloseDevice(I)V

    .line 378
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v1, :cond_26

    .line 379
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 381
    :cond_26
    return-void
.end method

.method private blacklist needCheckPermission()Z
    .registers 2

    .line 966
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist notifyOnScrollToTurboSchedService(Z)V
    .registers 3
    .param p1, "isOnScroll"    # Z

    .line 625
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTuboSchedManagerService()V

    .line 628
    :try_start_3
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_a

    .line 629
    invoke-interface {v0, p1}, Lmiui/turbosched/ITurboSchedManager;->notifyOnScroll(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    .line 633
    :cond_a
    goto :goto_f

    .line 631
    :catch_b
    move-exception v0

    .line 632
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_f
    return-void
.end method

.method private blacklist registerFrameTurboCallback()V
    .registers 4

    .line 874
    const-string v0, "turbosched"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/turbosched/ITurboSchedManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/turbosched/ITurboSchedManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    .line 875
    const-string v1, "TurboSchedMonitor"

    if-eqz v0, :cond_1d

    .line 877
    :try_start_10
    iget-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboSceneCallback:Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    invoke-interface {v0, v2}, Lmiui/turbosched/ITurboSchedManager;->frameTurboRegisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1c

    .line 878
    :catch_16
    move-exception v0

    .line 879
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to register callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 880
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1c
    goto :goto_22

    .line 882
    :cond_1d
    const-string v0, "Failed to get TurboSchedManager service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :goto_22
    return-void
.end method

.method private blacklist unregisterFrameTurboCallback()V
    .registers 4

    .line 887
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    const-string v1, "TurboSchedMonitor"

    if-eqz v0, :cond_13

    .line 889
    :try_start_6
    iget-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameTurboSceneCallback:Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;

    invoke-interface {v0, v2}, Lmiui/turbosched/ITurboSchedManager;->frameTurboUnregisterSceneCallback(Lmiui/turbosched/ITurboSchedManager$IFrameTurboSceneCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_12

    .line 890
    :catch_c
    move-exception v0

    .line 891
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_12
    goto :goto_18

    .line 894
    :cond_13
    const-string v0, "Failed to get TurboSchedManager service"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_18
    return-void
.end method


# virtual methods
.method public blacklist addTid(I)V
    .registers 5
    .param p1, "tid"    # I

    .line 405
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mTidSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mTidSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    .local v0, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/os/MiuiProcess$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/os/MiuiProcess$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mTids:[I

    .line 408
    return-void
.end method

.method public blacklist breakThermlimit(IJ)V
    .registers 7
    .param p1, "boost"    # I
    .param p2, "time"    # J

    .line 386
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mThermalBreakEnabled:Z

    if-nez v0, :cond_5

    .line 387
    return-void

    .line 390
    :cond_5
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTuboSchedManagerService()V

    .line 391
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_31

    .line 393
    :try_start_c
    iget-boolean v1, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    if-eqz v1, :cond_13

    .line 394
    invoke-interface {v0, p1, p2, p3}, Lmiui/turbosched/ITurboSchedManager;->breakThermlimit(IJ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 398
    :cond_13
    goto :goto_31

    .line 396
    :catch_14
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "breakThermlimit failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TurboSchedMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    return-void
.end method

.method public blacklist enableCoreAppOptimizer(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 759
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    .line 760
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.turbosched.enable.coreApp.optimizer"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method public whitelist getAppToken()V
    .registers 5

    .line 193
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    if-eqz v0, :cond_3f

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->matchLastCheckedThread()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3f

    .line 196
    :cond_b
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->needCheckPermission()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 197
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkBoostPermission()V

    .line 199
    :cond_14
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    if-eqz v0, :cond_3e

    .line 200
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_23

    .line 201
    const-string v0, "getAppToken"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 203
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsUIThreadRunning:Z

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    .line 205
    const-string v3, "/dev/metis"

    invoke-static {v3}, Landroid/os/NativeTurboSchedManager;->nativeOpenDevice(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, "handle":I
    if-ltz v3, :cond_37

    .line 207
    invoke-static {v3, v0}, Landroid/os/NativeTurboSchedManager;->nativeIoctlDevice(II)V

    .line 208
    invoke-static {v3}, Landroid/os/NativeTurboSchedManager;->nativeCloseDevice(I)V

    .line 210
    :cond_37
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_3e

    .line 211
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    .end local v3    # "handle":I
    :cond_3e
    return-void

    .line 194
    :cond_3f
    :goto_3f
    return-void
.end method

.method public blacklist getBoostDuration()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Long;

    sget-wide v2, Landroid/os/TurboSchedMonitorImpl;->BOOST_DURATION:J

    .line 738
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-wide v2, Landroid/os/TurboSchedMonitorImpl;->BOOST_THERMAL_LIMIT_DURATION:J

    .line 739
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 738
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 740
    .local v0, "coreAppBoost":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-object v0
.end method

.method public blacklist getCoreAppFrameDealyThreshold()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Float;

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_AWEME:F

    .line 707
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_GIFMAKER:F

    .line 708
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WEIBO:F

    .line 709
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_ARTICLE_NEWS:F

    .line 710
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_TAOBAO:F

    .line 711
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WECHAT:F

    .line 712
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget v2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_BILIBILI:F

    .line 713
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 707
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 714
    .local v0, "coreAppThs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    return-object v0
.end method

.method public blacklist getCoreAppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 812
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist isCoreApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "processName"    # Ljava/lang/String;

    .line 796
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 797
    :cond_8
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object p1

    .line 799
    :cond_c
    if-eqz p1, :cond_18

    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 800
    const/4 v0, 0x1

    return v0

    .line 802
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCoreAppOptimizerEnabled()Z
    .registers 2

    .line 766
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    return v0
.end method

.method public blacklist isDebugMode()Z
    .registers 2

    .line 753
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    return v0
.end method

.method public blacklist monitorAnimationCallback(Ljava/lang/String;)V
    .registers 5
    .param p1, "className"    # Ljava/lang/String;

    .line 423
    const-string v0, "com.kwai"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 424
    return-void

    .line 425
    :cond_9
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mPrefixWhitelistOfGifmaker:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 426
    .local v1, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 427
    invoke-virtual {p0}, Landroid/os/TurboSchedMonitorImpl;->triggerBoostAction()V

    .line 428
    goto :goto_26

    .line 430
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_25
    goto :goto_f

    .line 431
    :cond_26
    :goto_26
    return-void
.end method

.method public blacklist monitorFrameDelay(J)V
    .registers 12
    .param p1, "frameInterval"    # J

    .line 545
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_b

    .line 546
    const-string v0, "monitorFrameDelay"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 548
    :cond_b
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mSupportGaea:Z

    if-eqz v0, :cond_10

    .line 549
    return-void

    .line 551
    :cond_10
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isCoreAppUIThread()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 552
    return-void

    .line 555
    :cond_1d
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsDrawFrameFinished:Z

    if-nez v0, :cond_22

    .line 556
    return-void

    .line 559
    :cond_22
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_27

    .line 560
    return-void

    .line 563
    :cond_27
    const-wide/16 v3, 0x0

    cmp-long v0, p1, v3

    if-gtz v0, :cond_2f

    .line 564
    iget-wide p1, p0, Landroid/os/TurboSchedMonitorImpl;->mLastFrameInterval:J

    .line 565
    :cond_2f
    iput-wide p1, p0, Landroid/os/TurboSchedMonitorImpl;->mLastFrameInterval:J

    .line 566
    cmp-long v0, p1, v3

    if-gtz v0, :cond_36

    .line 567
    return-void

    .line 569
    :cond_36
    new-instance v0, Landroid/os/TurboSchedMonitorImpl$1;

    invoke-direct {v0, p0}, Landroid/os/TurboSchedMonitorImpl$1;-><init>(Landroid/os/TurboSchedMonitorImpl;)V

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTask:Ljava/util/TimerTask;

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasBoosted:Z

    .line 577
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsDrawFrameFinished:Z

    .line 579
    invoke-virtual {p0}, Landroid/os/TurboSchedMonitorImpl;->getCoreAppFrameDealyThreshold()Ljava/util/List;

    move-result-object v5

    .line 580
    .local v5, "coreAppThs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/high16 v6, 0x3f000000    # 0.5f

    .line 582
    .local v6, "thresholdForApps":F
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    .line 583
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentThreadName:Ljava/lang/String;

    .line 584
    iget-object v7, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    if-eqz v7, :cond_f3

    .line 585
    const-string v8, "com.ss.android.ugc.aweme"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 586
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto/16 :goto_f3

    .line 587
    :cond_70
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "com.smile.gifmaker"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 588
    const/4 v0, 0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_f3

    .line 589
    :cond_86
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "com.sina.weibo"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 590
    const/4 v0, 0x2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_f3

    .line 591
    :cond_9c
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "com.ss.android.article.news"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 592
    const/4 v0, 0x3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_f3

    .line 593
    :cond_b2
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "com.taobao.taobao"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 594
    const/4 v0, 0x4

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_f3

    .line 595
    :cond_c8
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "com.tencent.mm"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 596
    const/4 v0, 0x5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_f3

    .line 597
    :cond_de
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    const-string v7, "tv.danmaku.bili"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 598
    const/4 v0, 0x6

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 601
    :cond_f3
    :goto_f3
    long-to-float v0, p1

    const v7, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v7

    mul-float/2addr v0, v6

    float-to-long v7, v0

    add-long/2addr v7, v3

    .line 602
    .local v7, "threshold":J
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_104

    .line 603
    iget-object v3, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTimer:Ljava/util/Timer;

    invoke-virtual {v3, v0, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 605
    :cond_104
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_10b

    .line 606
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 607
    :cond_10b
    return-void
.end method

.method public blacklist monitorInputEvent(Landroid/view/InputEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 772
    sget-object v0, Landroid/os/TurboSchedMonitorImpl;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_19

    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_19

    .line 773
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    sput-object v0, Landroid/os/TurboSchedMonitorImpl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 775
    :cond_19
    sget-object v0, Landroid/os/TurboSchedMonitorImpl;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_29

    .line 776
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 777
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 779
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    :cond_29
    return-void
.end method

.method public blacklist notifyOnScroll(Z)V
    .registers 9
    .param p1, "start"    # Z

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/TurboSchedMonitorImpl;->mLastScrollTime:J

    .line 640
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsOnScroll:Z

    if-nez v0, :cond_24

    .line 641
    iput-boolean p1, p0, Landroid/os/TurboSchedMonitorImpl;->mIsOnScroll:Z

    .line 642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/TurboSchedMonitorImpl;->notifyOnScrollToTurboSchedService(Z)V

    .line 643
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollDelayTask:Ljava/util/TimerTask;

    if-nez v0, :cond_24

    .line 644
    new-instance v2, Landroid/os/TurboSchedMonitorImpl$2;

    invoke-direct {v2, p0}, Landroid/os/TurboSchedMonitorImpl$2;-><init>(Landroid/os/TurboSchedMonitorImpl;)V

    iput-object v2, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollDelayTask:Ljava/util/TimerTask;

    .line 655
    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mScrollTimer:Ljava/util/Timer;

    const-wide/16 v3, 0xfa0

    const-wide/16 v5, 0xfa0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 658
    :cond_24
    return-void
.end method

.method public blacklist onCoreAppActivityStart(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 818
    invoke-virtual {p0, p1}, Landroid/os/TurboSchedMonitorImpl;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-nez v0, :cond_d

    .line 819
    return-void

    .line 822
    :cond_d
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->registerFrameTurboCallback()V

    .line 824
    iget v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    if-nez v0, :cond_2c

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mPermissionChecked:Z

    .line 826
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTuboSchedManagerService()V

    .line 828
    :try_start_1a
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_27

    .line 829
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "processName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v1, v0}, Lmiui/turbosched/ITurboSchedManager;->onCoreAppFirstActivityStart(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_27} :catch_28

    .line 834
    .end local v0    # "processName":Ljava/lang/String;
    :cond_27
    goto :goto_2c

    .line 832
    :catch_28
    move-exception v0

    .line 833
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 836
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    :goto_2c
    iget v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    .line 837
    return-void
.end method

.method public blacklist onCoreAppActivityStop(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 842
    invoke-virtual {p0, p1}, Landroid/os/TurboSchedMonitorImpl;->isCoreApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-nez v0, :cond_d

    .line 843
    return-void

    .line 846
    :cond_d
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->unregisterFrameTurboCallback()V

    .line 848
    iget v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCheckForegroundCount:I

    .line 849
    if-nez v0, :cond_33

    .line 850
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    .line 851
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentTurboScene:Ljava/lang/String;

    .line 852
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getTuboSchedManagerService()V

    .line 854
    :try_start_21
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    if-eqz v0, :cond_2e

    .line 855
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "processName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mService:Lmiui/turbosched/ITurboSchedManager;

    invoke-interface {v1, v0}, Lmiui/turbosched/ITurboSchedManager;->onCoreAppLastActivityStop(Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_2f

    .line 860
    .end local v0    # "processName":Ljava/lang/String;
    :cond_2e
    goto :goto_33

    .line 858
    :catch_2f
    move-exception v0

    .line 859
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 862
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return-void
.end method

.method public blacklist recordFrameStart(IJJ)V
    .registers 7
    .param p1, "frame"    # I
    .param p2, "vsync"    # J
    .param p4, "vsyncId"    # J

    .line 413
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isInUIThread()Z

    move-result v0

    if-nez v0, :cond_7

    .line 414
    return-void

    .line 416
    :cond_7
    iput p1, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameId:I

    .line 417
    iput-wide p4, p0, Landroid/os/TurboSchedMonitorImpl;->mVsyncId:J

    .line 418
    return-void
.end method

.method public whitelist releaseAppToken()V
    .registers 7

    .line 217
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    if-eqz v0, :cond_46

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->matchLastCheckedThread()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_46

    .line 220
    :cond_b
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->needCheckPermission()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 221
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkBoostPermission()V

    .line 224
    :cond_14
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    if-eqz v0, :cond_45

    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsUIThreadRunning:Z

    if-eqz v0, :cond_45

    .line 225
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    const-wide/16 v1, 0x40

    if-eqz v0, :cond_27

    .line 226
    const-string v0, "releaseAppToken"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 228
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsUIThreadRunning:Z

    .line 229
    const-string v3, "/dev/metis"

    invoke-static {v3}, Landroid/os/NativeTurboSchedManager;->nativeOpenDevice(Ljava/lang/String;)I

    move-result v3

    .line 230
    .local v3, "handle":I
    if-ltz v3, :cond_3e

    .line 231
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v0, v4, v5}, Landroid/os/TurboSchedMonitorImpl;->breakThermlimit(IJ)V

    .line 232
    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/os/NativeTurboSchedManager;->nativeIoctlDevice(II)V

    .line 233
    invoke-static {v3}, Landroid/os/NativeTurboSchedManager;->nativeCloseDevice(I)V

    .line 236
    :cond_3e
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    if-eqz v0, :cond_45

    .line 237
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    .end local v3    # "handle":I
    :cond_45
    return-void

    .line 218
    :cond_46
    :goto_46
    return-void
.end method

.method public blacklist setBoostDuration(IJ)V
    .registers 6
    .param p1, "boostType"    # I
    .param p2, "time"    # J

    .line 720
    packed-switch p1, :pswitch_data_1e

    goto :goto_1c

    .line 726
    :pswitch_4
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.turbosched.thermal.limit.duration"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    sput-wide p2, Landroid/os/TurboSchedMonitorImpl;->BOOST_THERMAL_LIMIT_DURATION:J

    .line 728
    goto :goto_1c

    .line 722
    :pswitch_10
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.turbosched.boost.duration"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    sput-wide p2, Landroid/os/TurboSchedMonitorImpl;->BOOST_DURATION:J

    .line 724
    nop

    .line 732
    :goto_1c
    return-void

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_10
        :pswitch_4
    .end packed-switch
.end method

.method public blacklist setCoreAppFrameDealyThreshold(IF)V
    .registers 6
    .param p1, "appType"    # I
    .param p2, "frameDelayTH"    # F

    .line 668
    invoke-static {}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->values()[Landroid/os/TurboSchedMonitorImpl$CoreAppType;

    move-result-object v0

    aget-object v0, v0, p1

    .line 669
    .local v0, "caType":Landroid/os/TurboSchedMonitorImpl$CoreAppType;
    sget-object v1, Landroid/os/TurboSchedMonitorImpl$5;->$SwitchMap$android$os$TurboSchedMonitorImpl$CoreAppType:[I

    invoke-virtual {v0}, Landroid/os/TurboSchedMonitorImpl$CoreAppType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_68

    goto :goto_66

    .line 695
    :pswitch_12
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.bilibili"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_BILIBILI:F

    .line 697
    goto :goto_66

    .line 691
    :pswitch_1e
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.wechat"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WECHAT:F

    .line 693
    goto :goto_66

    .line 687
    :pswitch_2a
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.taobao"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_TAOBAO:F

    .line 689
    goto :goto_66

    .line 683
    :pswitch_36
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.article_news"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_ARTICLE_NEWS:F

    .line 685
    goto :goto_66

    .line 679
    :pswitch_42
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.weibo"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_WEIBO:F

    .line 681
    goto :goto_66

    .line 675
    :pswitch_4e
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.gifmaker"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_GIFMAKER:F

    .line 677
    goto :goto_66

    .line 671
    :pswitch_5a
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.turbosched.frame.delay.aweme"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    sput p2, Landroid/os/TurboSchedMonitorImpl;->THRESHOLD_FRAME_DELAY_AWEME:F

    .line 673
    nop

    .line 701
    :goto_66
    return-void

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_4e
        :pswitch_42
        :pswitch_36
        :pswitch_2a
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist setCoreAppList(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 867
    .local p2, "coreAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_4

    .line 868
    iput-object p2, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    .line 870
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/os/TurboSchedMonitorImpl;->mCoreAppList:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/os/TurboSchedMonitorImpl;->list2StringWithComma(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "turbo_sched_core_app_list"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 871
    return-void
.end method

.method public blacklist setDebugMode(I)V
    .registers 4
    .param p1, "debugMode"    # I

    .line 746
    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->DEBUG_DO_FRAMES:Z

    .line 747
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.turbosched.debug.frames"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public blacklist setDrawFrameFinished()V
    .registers 2

    .line 612
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isCoreAppUIThread()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-nez v0, :cond_d

    .line 613
    return-void

    .line 615
    :cond_d
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_17

    .line 616
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 617
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mFrameDelayTask:Ljava/util/TimerTask;

    .line 620
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mIsDrawFrameFinished:Z

    .line 621
    invoke-virtual {p0}, Landroid/os/TurboSchedMonitorImpl;->releaseAppToken()V

    .line 622
    return-void
.end method

.method public blacklist setForegroundActivity(Landroid/content/Context;)V
    .registers 3
    .param p1, "activity"    # Landroid/content/Context;

    .line 784
    if-eqz p1, :cond_a

    .line 785
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    goto :goto_11

    .line 787
    :cond_a
    iget-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    .line 788
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mForegroundActivity:Ljava/lang/ref/WeakReference;

    .line 791
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist triggerBoostAction()V
    .registers 4

    .line 250
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->ENABLE_CORE_APP_OPTIMIZER:Z

    if-eqz v0, :cond_47

    .line 251
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mSupportGaea:Z

    if-eqz v0, :cond_9

    .line 252
    return-void

    .line 254
    :cond_9
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->needCheckPermission()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 255
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->checkBoostPermission()V

    .line 258
    :cond_12
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isCoreAppUIThread()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->isFrameTurboApp()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 259
    return-void

    .line 262
    :cond_1f
    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentProcessName:Ljava/lang/String;

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/TurboSchedMonitorImpl;->mCurrentThreadName:Ljava/lang/String;

    .line 265
    iget-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mBoostAllowed:Z

    if-eqz v0, :cond_47

    invoke-direct {p0}, Landroid/os/TurboSchedMonitorImpl;->allowLaunchAction()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/TurboSchedMonitorImpl;->mHasFrameBoost:Z

    .line 268
    sget-wide v1, Landroid/os/TurboSchedMonitorImpl;->BOOST_THERMAL_LIMIT_DURATION:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/TurboSchedMonitorImpl;->breakThermlimit(IJ)V

    .line 269
    sget-wide v0, Landroid/os/TurboSchedMonitorImpl;->BOOST_DURATION:J

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/os/TurboSchedMonitorImpl;->metisFrameBoost(I)V

    .line 272
    :cond_47
    return-void
.end method
