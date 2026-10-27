.class public Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 591
    const-string v0, "SyntheticPasswordManager"

    const-string v1, "Weaver service has died"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fgetmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/IWeaver;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 593
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDiedRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/IWeaver;)V

    return-void
.end method
