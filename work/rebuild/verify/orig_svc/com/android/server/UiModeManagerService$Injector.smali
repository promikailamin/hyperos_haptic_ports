.class public Lcom/android/server/UiModeManagerService$Injector;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallingUid()I
    .registers 1

    .line 2794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V
    .registers 2

    .line 2798
    invoke-static {p1}, Landroid/service/dreams/Sandman;->startDreamWhenDockedIfAppropriate(Landroid/content/Context;)V

    return-void
.end method
