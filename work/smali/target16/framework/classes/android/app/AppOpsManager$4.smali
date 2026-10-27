.class Landroid/app/AppOpsManager$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;ILandroid/app/AppOpsManager$OnOpChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 9018
    iput-object p2, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist opChanged(IILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 9021
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->deviceAwarePermissionApisEnabled()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 9022
    iget-object v0, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of v0, v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz v0, :cond_13

    .line 9023
    iget-object v0, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast v0, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {v0, p1, p3, p4}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;Ljava/lang/String;)V

    .line 9026
    :cond_13
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_4f

    .line 9027
    iget-object v0, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v1, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, v1, p1

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 9028
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 9027
    invoke-interface {v0, p1, p3, p2, p4}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4f

    .line 9031
    :cond_2b
    iget-object p4, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    instance-of p4, p4, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    if-eqz p4, :cond_38

    .line 9032
    iget-object p4, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    check-cast p4, Landroid/app/AppOpsManager$OnOpChangedInternalListener;

    invoke-virtual {p4, p1, p3}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;->onOpChanged(ILjava/lang/String;)V

    .line 9035
    :cond_38
    sget-object p4, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p4, p4, p1

    iget-object p4, p4, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    if-eqz p4, :cond_4f

    .line 9036
    iget-object p4, p0, Landroid/app/AppOpsManager$4;->val$callback:Landroid/app/AppOpsManager$OnOpChangedListener;

    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object p1, v0, p1

    iget-object p1, p1, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 9037
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 9036
    invoke-interface {p4, p1, p3, p2}, Landroid/app/AppOpsManager$OnOpChangedListener;->onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9040
    :cond_4f
    :goto_4f
    return-void
.end method
