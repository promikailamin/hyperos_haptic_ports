.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;
.super Ljava/lang/Object;
.source "DeveloperVerifierExperimentProvider.java"


# instance fields
.field public final mStatus:Ljava/util/List;

.field public final mVerificationPolicy:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .registers 3

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;->mVerificationPolicy:I

    .line 196
    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;->mStatus:Ljava/util/List;

    return-void
.end method
