.class public final synthetic Lcom/android/server/autofill/FieldClassificationStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/autofill/FieldClassificationStrategy$MetadataParser;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/autofill/FieldClassificationStrategy;->lambda$getAvailableAlgorithms$0(Landroid/content/res/Resources;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
