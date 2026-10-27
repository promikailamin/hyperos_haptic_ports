.class public Lcom/android/server/pm/HsumBootUserInitializer$1;
.super Landroid/database/ContentObserver;
.source "HsumBootUserInitializer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/HsumBootUserInitializer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/HsumBootUserInitializer;Landroid/os/Handler;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer$1;->this$0:Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/HsumBootUserInitializer$1;->this$0:Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-static {v0}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$misDeviceProvisioned(Lcom/android/server/pm/HsumBootUserInitializer;)Z

    move-result v0

    .line 113
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 114
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 118
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 114
    const-string/jumbo v2, "onChange(%b): isDeviceProvisioned=%b"

    invoke-static {v1, v2, p1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    if-eqz v0, :cond_49

    .line 124
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Marking USER_SETUP_COMPLETE for system user"

    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer$1;->this$0:Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-static {p1}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$fgetmContentResolver(Lcom/android/server/pm/HsumBootUserInitializer;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    iget-object p1, p0, Lcom/android/server/pm/HsumBootUserInitializer$1;->this$0:Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-static {p1}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$fgetmContentResolver(Lcom/android/server/pm/HsumBootUserInitializer;)Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/HsumBootUserInitializer$1;->this$0:Lcom/android/server/pm/HsumBootUserInitializer;

    invoke-static {p0}, Lcom/android/server/pm/HsumBootUserInitializer;->-$$Nest$fgetmDeviceProvisionedObserver(Lcom/android/server/pm/HsumBootUserInitializer;)Landroid/database/ContentObserver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_49
    return-void
.end method
