.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$1:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;->f$0:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5$$ExternalSyntheticLambda0;->f$1:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$5;->lambda$onDetected$1(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-void
.end method
