.class public final synthetic Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/UserManagerService;

    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-static {p0, p1}, Lcom/android/server/pm/UserManagerService;->$r8$lambda$UiS2XWKpcqjTpLGlGMFs8sVoEGY(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method
