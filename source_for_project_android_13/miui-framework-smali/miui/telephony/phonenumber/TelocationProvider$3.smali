.class Lmiui/telephony/phonenumber/TelocationProvider$3;
.super Ljava/lang/Object;
.source "TelocationProvider.java"

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/TelocationProvider;->initUniqIdLen8Numbers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/telephony/phonenumber/TelocationProvider;


# direct methods
.method constructor blacklist <init>(Lmiui/telephony/phonenumber/TelocationProvider;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/telephony/phonenumber/TelocationProvider;

    .line 428
    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReadRaw([Ljava/lang/String;)V
    .registers 5
    .param p1, "array"    # [Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, "number":I
    const/4 v1, 0x0

    :try_start_2
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_8} :catch_a

    move v0, v1

    .line 436
    goto :goto_b

    .line 434
    :catch_a
    move-exception v1

    .line 437
    :goto_b
    if-eqz v0, :cond_1a

    .line 438
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider$3;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-static {v1}, Lmiui/telephony/phonenumber/TelocationProvider;->-$$Nest$fgetmUniqIdLen8Numbers(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 440
    :cond_1a
    return-void
.end method
