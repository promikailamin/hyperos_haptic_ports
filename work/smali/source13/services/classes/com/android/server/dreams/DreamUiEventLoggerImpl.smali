.class public Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "DreamUiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/server/dreams/DreamUiEventLogger;


# instance fields
.field final mLoggableDreamPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "loggableDreamPrefix"    # Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V
    .registers 8
    .param p1, "event"    # Lcom/android/internal/logging/UiEventLogger$UiEventEnum;
    .param p2, "dreamComponentName"    # Ljava/lang/String;

    .line 37
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result v0

    .line 38
    .local v0, "eventID":I
    if-gtz v0, :cond_7

    .line 39
    return-void

    .line 42
    :cond_7
    iget-object v1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    move v1, v2

    goto :goto_18

    :cond_12
    iget-object v1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 44
    .local v1, "isFirstPartyDream":Z
    :goto_18
    const/16 v3, 0x1c1

    .line 48
    if-eqz v1, :cond_1e

    move-object v4, p2

    goto :goto_21

    :cond_1e
    const-string/jumbo v4, "other"

    .line 44
    :goto_21
    invoke-static {v3, v2, v0, v2, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    .line 49
    return-void
.end method
