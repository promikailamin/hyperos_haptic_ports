.class public Lcom/android/server/power/Notifier$Interactivity;
.super Ljava/lang/Object;
.source "Notifier.java"


# instance fields
.field public changeReason:I

.field public changeStartTime:J

.field public isChanging:Z

.field public isInteractive:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/server/power/Notifier$Interactivity;->isInteractive:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/Notifier-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/power/Notifier$Interactivity;-><init>()V

    return-void
.end method
