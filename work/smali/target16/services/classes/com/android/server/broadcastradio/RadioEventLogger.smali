.class public final Lcom/android/server/broadcastradio/RadioEventLogger;
.super Ljava/lang/Object;
.source "RadioEventLogger.java"


# instance fields
.field public final mDebug:Z

.field public final mEventLogger:Landroid/util/LocalLog;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    .line 42
    new-instance p1, Landroid/util/LocalLog;

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    .line 64
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public varargs logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 52
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    if-eqz v0, :cond_12

    .line 55
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    return-void
.end method
