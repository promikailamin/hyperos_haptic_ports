.class final Landroid/media/session/MediaSession$Command;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Command"
.end annotation


# instance fields
.field public final greylist-max-o command:Ljava/lang/String;

.field public final greylist-max-o extras:Landroid/os/Bundle;

.field public final greylist-max-o stub:Landroid/os/ResultReceiver;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1605
    iput-object p1, p0, Landroid/media/session/MediaSession$Command;->command:Ljava/lang/String;

    .line 1606
    iput-object p2, p0, Landroid/media/session/MediaSession$Command;->extras:Landroid/os/Bundle;

    .line 1607
    iput-object p3, p0, Landroid/media/session/MediaSession$Command;->stub:Landroid/os/ResultReceiver;

    .line 1608
    return-void
.end method
