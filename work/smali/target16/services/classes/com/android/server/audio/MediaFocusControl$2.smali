.class public Lcom/android/server/audio/MediaFocusControl$2;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;)V
    .registers 2

    .line 1469
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1472
    const-string v0, "MediaFocusControl"

    const-string v1, "Audio focus freezer died, exiting focus freeze for test"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl$2;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p0}, Lcom/android/server/audio/MediaFocusControl;->-$$Nest$mreleaseFocusFreeze(Lcom/android/server/audio/MediaFocusControl;)V

    return-void
.end method
