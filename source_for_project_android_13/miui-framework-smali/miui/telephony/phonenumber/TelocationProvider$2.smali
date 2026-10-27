.class Lmiui/telephony/phonenumber/TelocationProvider$2;
.super Ljava/lang/Object;
.source "TelocationProvider.java"

# interfaces
.implements Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/phonenumber/TelocationProvider;->initxiaomiMobile()V
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

    .line 356
    iput-object p1, p0, Lmiui/telephony/phonenumber/TelocationProvider$2;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReadRaw([Ljava/lang/String;)V
    .registers 4
    .param p1, "array"    # [Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider$2;->this$0:Lmiui/telephony/phonenumber/TelocationProvider;

    invoke-static {v0}, Lmiui/telephony/phonenumber/TelocationProvider;->-$$Nest$fgetmXiaomiMobileSet(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method
