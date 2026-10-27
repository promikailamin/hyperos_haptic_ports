.class Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;
.super Ljava/lang/Object;
.source "MiuiFaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/MiuiFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAuthenticationCancelListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/face/MiuiFaceManager;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;)V
    .registers 2

    .line 212
    iput-object p1, p0, Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/face/MiuiFaceManager;Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/face/MiuiFaceManager;)V

    return-void
.end method


# virtual methods
.method public whitelist onCancel()V
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/hardware/face/MiuiFaceManager$OnAuthenticationCancelListener;->this$0:Landroid/hardware/face/MiuiFaceManager;

    invoke-static {v0}, Landroid/hardware/face/MiuiFaceManager;->-$$Nest$mcancelAuthentication(Landroid/hardware/face/MiuiFaceManager;)V

    .line 216
    return-void
.end method
