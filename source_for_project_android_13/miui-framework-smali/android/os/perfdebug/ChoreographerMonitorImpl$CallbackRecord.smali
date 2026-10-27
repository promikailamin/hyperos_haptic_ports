.class Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;
.super Ljava/lang/Object;
.source "ChoreographerMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/perfdebug/ChoreographerMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackRecord"
.end annotation


# instance fields
.field blacklist action:Ljava/lang/String;

.field blacklist callbackType:I

.field blacklist latencyMillis:J


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;J)V
    .registers 5
    .param p1, "callbackType"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "latencyMillis"    # J

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->callbackType:I

    .line 146
    iput-object p2, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->action:Ljava/lang/String;

    .line 147
    iput-wide p3, p0, Landroid/os/perfdebug/ChoreographerMonitorImpl$CallbackRecord;->latencyMillis:J

    .line 148
    return-void
.end method
