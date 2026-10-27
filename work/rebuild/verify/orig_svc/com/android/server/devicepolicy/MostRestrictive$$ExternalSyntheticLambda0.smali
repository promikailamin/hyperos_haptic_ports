.class public final synthetic Lcom/android/server/devicepolicy/MostRestrictive$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/admin/PolicyValue;


# direct methods
.method public synthetic constructor <init>(Landroid/app/admin/PolicyValue;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/MostRestrictive$$ExternalSyntheticLambda0;->f$0:Landroid/app/admin/PolicyValue;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/devicepolicy/MostRestrictive$$ExternalSyntheticLambda0;->f$0:Landroid/app/admin/PolicyValue;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/MostRestrictive;->$r8$lambda$OiyvHDr0tydAO1HgptrqEz3LNu8(Landroid/app/admin/PolicyValue;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
