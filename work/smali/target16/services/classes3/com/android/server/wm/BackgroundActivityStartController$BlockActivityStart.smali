.class public Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
.super Ljava/lang/Object;
.source "BackgroundActivityStartController.java"


# instance fields
.field public mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

.field public mTopActivityMatchesSource:Z

.field public mTopActivityOptedIn:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmTopActivityMatchesSource(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTopActivityOptedIn(Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BackgroundActivityStartController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesSource()Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 2

    const/4 v0, 0x1

    .line 2292
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityMatchesSource:Z

    return-object p0
.end method

.method public optedIn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;
    .registers 3

    const/4 v0, 0x1

    .line 2284
    iput-boolean v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mTopActivityOptedIn:Z

    .line 2285
    iget-object v0, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_9

    .line 2286
    iput-object p1, p0, Lcom/android/server/wm/BackgroundActivityStartController$BlockActivityStart;->mActivityOptedIn:Lcom/android/server/wm/ActivityRecord;

    :cond_9
    return-object p0
.end method
