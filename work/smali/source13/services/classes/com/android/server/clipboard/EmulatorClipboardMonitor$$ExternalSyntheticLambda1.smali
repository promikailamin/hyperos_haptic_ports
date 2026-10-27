.class public final synthetic Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;->f$1:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->lambda$setHostClipboard$1(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method
