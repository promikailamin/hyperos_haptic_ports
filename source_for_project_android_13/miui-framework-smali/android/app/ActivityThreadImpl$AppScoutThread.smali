.class public Landroid/app/ActivityThreadImpl$AppScoutThread;
.super Landroid/app/IAppScoutThread$Stub;
.source "ActivityThreadImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThreadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppScoutThread"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Landroid/app/IAppScoutThread$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dumpPeriodHistoryMessage(JI)V
    .registers 6
    .param p1, "anrTime"    # J
    .param p3, "duration"    # I

    .line 146
    const-string v0, "ActivityThread"

    const-string v1, "dumpPeriodHistoryMessage is not implemented in IAppScoutThread"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method
