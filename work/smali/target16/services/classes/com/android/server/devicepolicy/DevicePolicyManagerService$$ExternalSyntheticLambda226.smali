.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda226;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda226;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda226;->f$1:Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda226;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda226;->f$1:Landroid/content/pm/UserInfo;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->$r8$lambda$javgHlfz4tJyRVQpCkcjI8w92v4(Ljava/util/List;Landroid/content/pm/UserInfo;Ljava/util/Map$Entry;)V

    return-void
.end method
