.class public final synthetic Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/SparseIntArray;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget v0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/MultiuserNonComplianceLogger$$ExternalSyntheticLambda0;->f$1:Landroid/util/SparseIntArray;

    invoke-static {v0, p0}, Lcom/android/server/pm/MultiuserNonComplianceLogger;->$r8$lambda$dPBfEHkeuk1Ojz4afuoK6uRVtp4(ILandroid/util/SparseIntArray;)V

    return-void
.end method
