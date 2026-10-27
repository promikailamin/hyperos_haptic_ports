.class public final Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;
.super Ljava/lang/Object;
.source "SmallAreaDetectionController.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/SmallAreaDetectionController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/SmallAreaDetectionController;Lcom/android/server/display/SmallAreaDetectionController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;-><init>(Lcom/android/server/display/SmallAreaDetectionController;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v0}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmLock(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v1}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmAllowPkgMap(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 161
    iget-object v1, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {v1}, Lcom/android/server/display/SmallAreaDetectionController;->-$$Nest$fgetmAllowPkgMap(Lcom/android/server/display/SmallAreaDetectionController;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_28

    :catchall_25
    move-exception p0

    goto :goto_37

    :cond_27
    move p1, v2

    .line 163
    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_25

    cmpl-float v0, p1, v2

    if-lez v0, :cond_36

    .line 165
    iget-object p0, p0, Lcom/android/server/display/SmallAreaDetectionController$PackageReceiver;->this$0:Lcom/android/server/display/SmallAreaDetectionController;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/display/SmallAreaDetectionController;->setSmallAreaDetectionThreshold(IF)V

    :cond_36
    return-void

    .line 163
    :goto_37
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_25

    throw p0
.end method
