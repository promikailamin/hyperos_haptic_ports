.class Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StrippedTextClassificationContext"
.end annotation


# instance fields
.field public final useDefaultTextClassifier:Z

.field public final userId:I


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 4
    .param p1, "textClassificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    nop

    .line 742
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;

    move-result-object v0

    .line 743
    .local v0, "sysTcMetadata":Landroid/view/textclassifier/SystemTextClassifierMetadata;
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->getUserId()I

    move-result v1

    iput v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->userId:I

    .line 744
    invoke-virtual {v0}, Landroid/view/textclassifier/SystemTextClassifierMetadata;->useDefaultTextClassifier()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;->useDefaultTextClassifier:Z

    .line 745
    return-void
.end method
