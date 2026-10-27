.class public final synthetic Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(II[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$0:I

    iget v1, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;->f$2:[B

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->lambda$build$0(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    return-object p1
.end method
