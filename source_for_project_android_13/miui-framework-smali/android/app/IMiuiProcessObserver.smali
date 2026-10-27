.class public abstract Landroid/app/IMiuiProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "IMiuiProcessObserver.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onForegroundActivitiesChanged(IIZ)V
.end method

.method public abstract blacklist onImportanceChanged(III)V
.end method

.method public abstract blacklist onProcessDied(II)V
.end method

.method public abstract blacklist onProcessStateChanged(III)V
.end method
