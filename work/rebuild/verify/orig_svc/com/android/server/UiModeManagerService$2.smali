.class public Lcom/android/server/UiModeManagerService$2;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/UiModeManagerService$IntProperty;


# instance fields
.field public mCurrentModeTypeValue:I


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 224
    iput p1, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    return-void
.end method


# virtual methods
.method public get()I
    .registers 1

    .line 228
    iget p0, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    return p0
.end method

.method public set(I)V
    .registers 3

    .line 233
    iget v0, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    if-eq v0, p1, :cond_9

    .line 234
    iput p1, p0, Lcom/android/server/UiModeManagerService$2;->mCurrentModeTypeValue:I

    .line 236
    invoke-static {}, Landroid/app/UiModeManager;->invalidateCurrentModeTypeCache()V

    :cond_9
    return-void
.end method
