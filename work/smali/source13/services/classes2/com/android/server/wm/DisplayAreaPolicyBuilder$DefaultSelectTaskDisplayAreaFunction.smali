.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;
.super Ljava/lang/Object;
.source "DisplayAreaPolicyBuilder.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultSelectTaskDisplayAreaFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Landroid/os/Bundle;",
        "Lcom/android/server/wm/TaskDisplayArea;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private final mDisplayId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3
    .param p1, "defaultTaskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 407
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    .line 408
    return-void
.end method


# virtual methods
.method public apply(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 11
    .param p1, "options"    # Landroid/os/Bundle;

    .line 412
    if-nez p1, :cond_5

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v0

    .line 415
    :cond_5
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 416
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    .line 417
    .local v1, "tdaToken":Landroid/window/WindowContainerToken;
    if-nez v1, :cond_13

    .line 418
    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v2

    .line 420
    :cond_13
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 422
    .local v2, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v2, :cond_3b

    .line 423
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v3, :cond_38

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x6fbb83bc

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v8, v6, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 425
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_38
    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    return-object v3

    .line 427
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    iget v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    if-ne v3, v4, :cond_44

    .line 432
    return-object v2

    .line 428
    :cond_44
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The specified TaskDisplayArea must attach to Display#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->mDisplayId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but it is in Display#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 430
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 400
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$DefaultSelectTaskDisplayAreaFunction;->apply(Landroid/os/Bundle;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    return-object p1
.end method
