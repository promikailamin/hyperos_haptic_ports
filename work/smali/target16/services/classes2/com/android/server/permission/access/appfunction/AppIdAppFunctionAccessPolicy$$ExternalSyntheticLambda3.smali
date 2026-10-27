.class public final synthetic Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iput p2, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;

    iget p0, p0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Lcom/android/server/pm/pkg/PackageState;

    invoke-static {v0, p0, p1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;->$r8$lambda$1NSDgyltaqr5vEgDkuzV9fW9mq8(Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPolicy;ILcom/android/server/pm/pkg/PackageState;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
