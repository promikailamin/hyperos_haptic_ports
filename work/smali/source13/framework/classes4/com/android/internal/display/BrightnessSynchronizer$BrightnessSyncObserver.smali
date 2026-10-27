.class Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;
.super Ljava/lang/Object;
.source "BrightnessSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/display/BrightnessSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessSyncObserver"
.end annotation


# instance fields
.field private blacklist mIsObserving:Z

.field private final blacklist mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final synthetic blacklist this$0:Lcom/android/internal/display/BrightnessSynchronizer;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;)V
    .registers 2

    .line 539
    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 542
    new-instance p1, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;

    invoke-direct {p1, p0}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$1;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;)V

    iput-object p1, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/display/BrightnessSynchronizer;Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;-><init>(Lcom/android/internal/display/BrightnessSynchronizer;)V

    return-void
.end method

.method private blacklist createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 556
    new-instance v0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver$2;-><init>(Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method blacklist isObserving()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    return v0
.end method

.method blacklist startObserving(Landroid/os/Handler;)V
    .registers 10
    .param p1, "handler"    # Landroid/os/Handler;

    .line 580
    iget-object v0, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 584
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->createBrightnessContentObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v1

    .line 585
    .local v1, "contentObserver":Landroid/database/ContentObserver;
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetBRIGHTNESS_URI()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 587
    invoke-static {}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$sfgetXSPACE_ENABLE_URI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 589
    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmContext(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "xspace_enabled"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_34

    move v3, v5

    :cond_34
    invoke-static {v2, v3}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fputmIsXSpaceEnable(Lcom/android/internal/display/BrightnessSynchronizer;Z)V

    .line 592
    iget-object v2, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->this$0:Lcom/android/internal/display/BrightnessSynchronizer;

    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->-$$Nest$fgetmDisplayManager(Lcom/android/internal/display/BrightnessSynchronizer;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-wide/16 v6, 0x8

    invoke-virtual {v2, v3, p1, v6, v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 594
    iput-boolean v5, p0, Lcom/android/internal/display/BrightnessSynchronizer$BrightnessSyncObserver;->mIsObserving:Z

    .line 595
    return-void
.end method
