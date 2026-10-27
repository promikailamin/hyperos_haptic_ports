.class public Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioOverrides.java"


# instance fields
.field public mHasBeenSet:Z

.field public mUserAspectRatio:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;Lcom/android/server/wm/ActivityRecord;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->getUserAspectRatio(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 376
    iput v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    .line 378
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/AppCompatAspectRatioOverrides-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUserAspectRatio(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4

    .line 383
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z

    if-nez v0, :cond_31

    .line 385
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 387
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    const/4 p1, 0x1

    .line 389
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mHasBeenSet:Z
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_31

    :catch_1a
    move-exception p1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown retrieving aspect ratio user override "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    :cond_31
    :goto_31
    iget p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->mUserAspectRatio:I

    return p0
.end method
