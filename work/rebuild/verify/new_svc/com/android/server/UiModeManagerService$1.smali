.class public Lcom/android/server/UiModeManagerService$1;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Lcom/android/server/UiModeManagerService$IntProperty;


# instance fields
.field public mNightModeValue:I


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 168
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return-void
.end method


# virtual methods
.method public get()I
    .registers 1

    .line 172
    iget p0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    return p0
.end method

.method public set(I)V
    .registers 3

    .line 177
    iget v0, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    if-eq v0, p1, :cond_9

    .line 178
    iput p1, p0, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 180
    invoke-static {}, Landroid/app/UiModeManager;->invalidateNightModeCache()V

    :cond_9
    return-void
.end method
