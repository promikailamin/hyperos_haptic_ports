.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist END_STRING_FLAG:I = 0x0

.field private static final blacklist LENGTH_QUOTE:I = 0x1f

.field private static final blacklist LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final blacklist PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final blacklist PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final blacklist PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final blacklist PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final blacklist PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final blacklist PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final blacklist PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final blacklist PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final blacklist PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final blacklist PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final blacklist QUOTED_STRING_FLAG:I = 0x22

.field static final blacklist REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final blacklist REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final blacklist REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final blacklist REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final blacklist SHORT_INTEGER_MAX:I = 0x7f

.field static final blacklist STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final blacklist STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final blacklist STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final blacklist TEXT_MAX:I = 0x7f

.field private static greylist mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected greylist mMessage:Ljava/io/ByteArrayOutputStream;

.field private greylist mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private greylist mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected greylist mPosition:I

.field private final greylist mResolver:Landroid/content/ContentResolver;

.field private greylist mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStack(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .registers 1

    iget-object p0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 32
    nop

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 131
    const/4 v0, 0x0

    :goto_c
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 132
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 134
    :cond_21
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .registers 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 94
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 100
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 106
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 118
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 144
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 146
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 147
    new-instance p1, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {p1, p0, v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer-IA;)V

    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 148
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 149
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 150
    return-void
.end method

.method private blacklist appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 4

    .line 477
    nop

    .line 480
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v0

    .line 481
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 482
    const/4 v1, 0x1

    if-ne v1, v0, :cond_1a

    .line 484
    const-string v0, "/TYPE=PLMN"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_33

    .line 485
    :cond_1a
    const/4 v1, 0x3

    if-ne v1, v0, :cond_27

    .line 487
    const-string v0, "/TYPE=IPV4"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_33

    .line 488
    :cond_27
    const/4 v1, 0x4

    if-ne v1, v0, :cond_33

    .line 490
    const-string v0, "/TYPE=IPV6"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_33} :catch_35

    .line 494
    :cond_33
    :goto_33
    nop

    .line 496
    return-object p1

    .line 492
    :catch_35
    move-exception p1

    .line 493
    const/4 p1, 0x0

    return-object p1
.end method

.method private greylist appendHeader(I)I
    .registers 11

    .line 504
    const/16 v0, 0x80

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/16 v4, 0x81

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_176

    .line 666
    :pswitch_c
    const/4 p1, 0x3

    return p1

    .line 611
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 612
    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 613
    if-nez v0, :cond_17

    .line 614
    return v6

    .line 617
    :cond_17
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 618
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 619
    goto/16 :goto_174

    .line 506
    :pswitch_1f
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 508
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result p1

    .line 509
    if-nez p1, :cond_31

    .line 510
    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_174

    .line 512
    :cond_31
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 515
    goto/16 :goto_174

    .line 519
    :pswitch_36
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 520
    if-nez v0, :cond_3f

    .line 521
    return v6

    .line 524
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 525
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 526
    goto/16 :goto_174

    .line 622
    :pswitch_47
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 623
    if-nez v2, :cond_50

    .line 624
    return v6

    .line 627
    :cond_50
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 628
    nop

    .line 629
    const-string p1, "advertisement"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 628
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 630
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_174

    .line 631
    :cond_65
    nop

    .line 632
    const-string p1, "auto"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 631
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 633
    const/16 p1, 0x83

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_174

    .line 634
    :cond_79
    nop

    .line 635
    const-string/jumbo p1, "personal"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 634
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_8c

    .line 636
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_174

    .line 637
    :cond_8c
    nop

    .line 638
    const-string p1, "informational"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 637
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 639
    const/16 p1, 0x82

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_174

    .line 641
    :cond_a0
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 643
    goto/16 :goto_174

    .line 551
    :pswitch_a5
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 553
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 554
    if-eqz p1, :cond_f8

    .line 555
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f8

    new-instance v2, Ljava/lang/String;

    .line 556
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "insert-address-token"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    goto :goto_f8

    .line 563
    :cond_cc
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 564
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 567
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 569
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p1

    .line 570
    if-nez p1, :cond_e1

    .line 571
    return v5

    .line 574
    :cond_e1
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 576
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result p1

    .line 577
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 578
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 579
    iget-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 581
    goto/16 :goto_174

    .line 559
    :cond_f8
    :goto_f8
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 561
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_174

    .line 646
    :pswitch_100
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 647
    cmp-long v0, v2, v7

    if-nez v0, :cond_10b

    .line 648
    return v6

    .line 651
    :cond_10b
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 653
    iget-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 654
    iget-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object p1

    .line 656
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 657
    invoke-virtual {p0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 659
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result p1

    .line 660
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 661
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 662
    iget-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 663
    goto :goto_174

    .line 590
    :pswitch_132
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 591
    if-nez v0, :cond_13b

    .line 592
    return v6

    .line 595
    :cond_13b
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 596
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 597
    goto :goto_174

    .line 600
    :pswitch_142
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 601
    cmp-long v0, v2, v4

    if-nez v0, :cond_14d

    .line 602
    return v6

    .line 605
    :cond_14d
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 606
    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    .line 607
    goto :goto_174

    .line 531
    :pswitch_154
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 533
    if-nez v0, :cond_15d

    .line 534
    return v6

    .line 538
    :cond_15d
    move v2, v1

    :goto_15e
    array-length v3, v0

    if-ge v2, v3, :cond_173

    .line 539
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 540
    if-nez v3, :cond_16a

    .line 541
    return v5

    .line 544
    :cond_16a
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 545
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_15e

    .line 547
    :cond_173
    nop

    .line 669
    :goto_174
    return v1

    nop

    :pswitch_data_176
    .packed-switch 0x81
        :pswitch_154
        :pswitch_154
        :pswitch_c
        :pswitch_c
        :pswitch_142
        :pswitch_132
        :pswitch_c
        :pswitch_100
        :pswitch_a5
        :pswitch_47
        :pswitch_36
        :pswitch_c
        :pswitch_1f
        :pswitch_c
        :pswitch_132
        :pswitch_132
        :pswitch_132
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_132
        :pswitch_e
        :pswitch_154
        :pswitch_36
        :pswitch_132
        :pswitch_e
        :pswitch_132
    .end packed-switch
.end method

.method protected static blacklist checkAddressType(Ljava/lang/String;)I
    .registers 3

    .line 1209
    const/4 v0, 0x5

    if-nez p0, :cond_4

    .line 1210
    return v0

    .line 1213
    :cond_4
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1215
    const/4 p0, 0x3

    return p0

    .line 1216
    :cond_e
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1218
    const/4 p0, 0x1

    return p0

    .line 1219
    :cond_18
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1221
    const/4 p0, 0x2

    return p0

    .line 1222
    :cond_22
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 1224
    const/4 p0, 0x4

    return p0

    .line 1227
    :cond_2c
    return v0
.end method

.method private blacklist makeAckInd()I
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 759
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 760
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 764
    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 765
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 768
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 769
    return v2

    .line 773
    :cond_22
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 774
    return v2

    .line 778
    :cond_2b
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 780
    return v1
.end method

.method private blacklist makeMessageBody(I)I
    .registers 19

    .line 880
    move-object/from16 v1, p0

    const-string v2, ">"

    const-string v3, "<"

    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 882
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 885
    new-instance v0, Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    .line 886
    sget-object v5, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 887
    const/4 v5, 0x1

    if-nez v0, :cond_2a

    .line 889
    return v5

    .line 892
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 896
    move/from16 v0, p1

    if-ne v0, v6, :cond_3f

    .line 897
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v6, v0

    goto :goto_48

    .line 899
    :cond_3f
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v6, v0

    .line 901
    :goto_48
    const/4 v7, 0x0

    if-eqz v6, :cond_219

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_219

    .line 911
    :cond_53
    const/16 v8, 0x3e

    const/16 v9, 0x3c

    :try_start_57
    invoke-virtual {v6, v7}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v10

    .line 914
    if-eqz v10, :cond_91

    .line 915
    const/16 v11, 0x8a

    invoke-virtual {v1, v11}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 916
    aget-byte v11, v10, v7

    if-ne v9, v11, :cond_74

    array-length v11, v10

    sub-int/2addr v11, v5

    aget-byte v11, v10, v11

    if-ne v8, v11, :cond_74

    .line 917
    invoke-virtual {v1, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_91

    .line 919
    :cond_74
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 924
    :cond_91
    :goto_91
    const/16 v10, 0x89

    invoke-virtual {v1, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 925
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_9d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_57 .. :try_end_9d} :catch_9e

    .line 929
    goto :goto_a2

    .line 927
    :catch_9e
    move-exception v0

    .line 928
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 931
    :goto_a2
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    .line 932
    iget-object v4, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 933
    int-to-long v10, v0

    invoke-virtual {v1, v10, v11}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 934
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 937
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .line 938
    int-to-long v10, v4

    invoke-virtual {v1, v10, v11}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 939
    move v10, v7

    :goto_bd
    if-ge v10, v4, :cond_218

    .line 940
    invoke-virtual {v6, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 941
    iget-object v11, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 942
    iget-object v11, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 944
    iget-object v12, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 945
    iget-object v12, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v12

    .line 947
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v13

    .line 949
    if-nez v13, :cond_e0

    .line 951
    return v5

    .line 955
    :cond_e0
    sget-object v14, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v13}, Ljava/lang/String;-><init>([B)V

    .line 956
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 957
    if-nez v14, :cond_f3

    .line 958
    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_fa

    .line 960
    :cond_f3
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 967
    :goto_fa
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v13

    .line 969
    if-nez v13, :cond_10d

    .line 970
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v13

    .line 972
    if-nez v13, :cond_10d

    .line 973
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v13

    .line 975
    if-nez v13, :cond_10d

    .line 979
    return v5

    .line 983
    :cond_10d
    const/16 v14, 0x85

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 984
    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 987
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v13

    .line 988
    if-eqz v13, :cond_123

    .line 989
    const/16 v14, 0x81

    invoke-virtual {v1, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 990
    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 993
    :cond_123
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 994
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 995
    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 996
    iget-object v12, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 999
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v12

    .line 1001
    if-eqz v12, :cond_16b

    .line 1002
    const/16 v13, 0xc0

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1003
    aget-byte v13, v12, v7

    if-ne v9, v13, :cond_14e

    array-length v13, v12

    sub-int/2addr v13, v5

    aget-byte v13, v12, v13

    if-ne v8, v13, :cond_14e

    .line 1004
    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    goto :goto_16b

    .line 1006
    :cond_14e
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    .line 1011
    :cond_16b
    :goto_16b
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v12

    .line 1012
    if-eqz v12, :cond_179

    .line 1013
    const/16 v13, 0x8e

    invoke-virtual {v1, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 1014
    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 1018
    :cond_179
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v12

    .line 1020
    nop

    .line 1021
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v13

    .line 1023
    if-eqz v13, :cond_18c

    .line 1024
    array-length v0, v13

    invoke-virtual {v1, v13, v7, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1025
    array-length v0, v13

    move/from16 v16, v5

    goto :goto_1c3

    .line 1027
    :cond_18c
    nop

    .line 1029
    const/16 v13, 0x400

    const/4 v14, 0x0

    :try_start_190
    new-array v13, v13, [B

    .line 1030
    iget-object v15, v1, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v14

    .line 1031
    move v15, v7

    .line 1032
    :goto_19d
    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_1a1
    .catch Ljava/io/FileNotFoundException; {:try_start_190 .. :try_end_1a1} :catch_20c
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_1a1} :catch_200
    .catch Ljava/lang/RuntimeException; {:try_start_190 .. :try_end_1a1} :catch_1f4
    .catchall {:try_start_190 .. :try_end_1a1} :catchall_1ea

    move/from16 v16, v5

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1ba

    .line 1033
    :try_start_1a6
    iget-object v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v13, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1034
    iget v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_1b0
    .catch Ljava/io/FileNotFoundException; {:try_start_1a6 .. :try_end_1b0} :catch_1b8
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b0} :catch_1b6
    .catch Ljava/lang/RuntimeException; {:try_start_1a6 .. :try_end_1b0} :catch_1b4
    .catchall {:try_start_1a6 .. :try_end_1b0} :catchall_1ea

    .line 1035
    add-int/2addr v15, v0

    move/from16 v5, v16

    goto :goto_19d

    .line 1041
    :catch_1b4
    move-exception v0

    goto :goto_1f7

    .line 1039
    :catch_1b6
    move-exception v0

    goto :goto_203

    .line 1037
    :catch_1b8
    move-exception v0

    goto :goto_20f

    .line 1044
    :cond_1ba
    if-eqz v14, :cond_1c2

    .line 1046
    :try_start_1bc
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1bf} :catch_1c0

    .line 1048
    :goto_1bf
    goto :goto_1c2

    .line 1047
    :catch_1c0
    move-exception v0

    goto :goto_1bf

    .line 1053
    :cond_1c2
    :goto_1c2
    move v0, v15

    :goto_1c3
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v5

    sub-int/2addr v5, v12

    if-ne v0, v5, :cond_1e2

    .line 1057
    iget-object v5, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1058
    int-to-long v11, v12

    invoke-virtual {v1, v11, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1059
    int-to-long v11, v0

    invoke-virtual {v1, v11, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1060
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 939
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    goto/16 :goto_bd

    .line 1054
    :cond_1e2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Length correctness check failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1044
    :catchall_1ea
    move-exception v0

    move-object v1, v0

    if-eqz v14, :cond_1f3

    .line 1046
    :try_start_1ee
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    .line 1048
    goto :goto_1f3

    .line 1047
    :catch_1f2
    move-exception v0

    .line 1050
    :cond_1f3
    :goto_1f3
    throw v1

    .line 1041
    :catch_1f4
    move-exception v0

    move/from16 v16, v5

    .line 1042
    :goto_1f7
    nop

    .line 1044
    if-eqz v14, :cond_1ff

    .line 1046
    :try_start_1fa
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1fd
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_1fd} :catch_1fe

    .line 1048
    goto :goto_1ff

    .line 1047
    :catch_1fe
    move-exception v0

    .line 1042
    :cond_1ff
    :goto_1ff
    return v16

    .line 1039
    :catch_200
    move-exception v0

    move/from16 v16, v5

    .line 1040
    :goto_203
    nop

    .line 1044
    if-eqz v14, :cond_20b

    .line 1046
    :try_start_206
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_20a

    .line 1048
    goto :goto_20b

    .line 1047
    :catch_20a
    move-exception v0

    .line 1040
    :cond_20b
    :goto_20b
    return v16

    .line 1037
    :catch_20c
    move-exception v0

    move/from16 v16, v5

    .line 1038
    :goto_20f
    nop

    .line 1044
    if-eqz v14, :cond_217

    .line 1046
    :try_start_212
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_215
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_216

    .line 1048
    goto :goto_217

    .line 1047
    :catch_216
    move-exception v0

    .line 1038
    :cond_217
    :goto_217
    return v16

    .line 1063
    :cond_218
    return v7

    .line 903
    :cond_219
    :goto_219
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 904
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 905
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 906
    return v7
.end method

.method private blacklist makeNotifyResp()I
    .registers 4

    .line 724
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 725
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 726
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 730
    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 731
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 734
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 735
    return v2

    .line 739
    :cond_22
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 740
    return v2

    .line 744
    :cond_2b
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_34

    .line 745
    return v2

    .line 749
    :cond_34
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 751
    return v1
.end method

.method private blacklist makeReadRecInd()I
    .registers 4

    .line 676
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 677
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 678
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 682
    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 683
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 686
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_22

    .line 687
    return v2

    .line 691
    :cond_22
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2b

    .line 692
    return v2

    .line 696
    :cond_2b
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_34

    .line 697
    return v2

    .line 701
    :cond_34
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 702
    return v2

    .line 706
    :cond_3d
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 709
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4b

    .line 710
    return v2

    .line 717
    :cond_4b
    return v1
.end method

.method private blacklist makeSendRetrievePdu(I)I
    .registers 5

    .line 787
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 788
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 789
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 793
    :cond_e
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 794
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 797
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 799
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 800
    if-eqz v0, :cond_91

    .line 804
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 807
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 808
    return v2

    .line 812
    :cond_30
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 815
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3e

    .line 816
    return v2

    .line 819
    :cond_3e
    nop

    .line 822
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eq v0, v2, :cond_48

    .line 823
    move v1, v2

    .line 827
    :cond_48
    const/16 v0, 0x82

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eq v0, v2, :cond_51

    .line 828
    move v1, v2

    .line 832
    :cond_51
    const/16 v0, 0x81

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eq v0, v2, :cond_5a

    .line 833
    move v1, v2

    .line 837
    :cond_5a
    if-nez v1, :cond_5d

    .line 838
    return v2

    .line 842
    :cond_5d
    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 846
    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 849
    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 852
    const/16 v0, 0x8f

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 855
    const/16 v0, 0x86

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 858
    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 860
    const/16 v0, 0x84

    if-ne p1, v0, :cond_89

    .line 862
    const/16 v1, 0x99

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 864
    const/16 v1, 0x9a

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 869
    :cond_89
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 872
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result p1

    return p1

    .line 802
    :cond_91
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Transaction-ID is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected blacklist append(I)V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 208
    iget p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 209
    return-void
.end method

.method protected blacklist appendDateValue(J)V
    .registers 3

    .line 415
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 416
    return-void
.end method

.method protected greylist appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 4

    .line 342
    nop

    .line 344
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 345
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object p1

    .line 346
    if-nez p1, :cond_c

    .line 347
    return-void

    .line 355
    :cond_c
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 356
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v1

    .line 358
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 359
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 361
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result p1

    .line 362
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 363
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 364
    iget-object p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 365
    return-void
.end method

.method protected greylist appendLongInteger(J)V
    .registers 13

    .line 272
    nop

    .line 275
    const/4 v0, 0x0

    move-wide v1, p1

    move v3, v0

    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const/16 v5, 0x8

    if-eqz v4, :cond_12

    if-ge v3, v5, :cond_12

    .line 276
    ushr-long/2addr v1, v5

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 280
    :cond_12
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 284
    add-int/lit8 v1, v3, -0x1

    mul-int/2addr v1, v5

    .line 286
    nop

    :goto_19
    if-ge v0, v3, :cond_28

    .line 287
    ushr-long v6, p1, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v2, v6

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 288
    sub-int/2addr v1, v5

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 290
    :cond_28
    return-void
.end method

.method protected greylist appendOctet(I)V
    .registers 2

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 240
    return-void
.end method

.method protected greylist appendQuotedString(Ljava/lang/String;)V
    .registers 2

    .line 473
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 474
    return-void
.end method

.method protected greylist appendQuotedString([B)V
    .registers 4

    .line 455
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 456
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 458
    return-void
.end method

.method protected greylist appendShortInteger(I)V
    .registers 2

    .line 227
    or-int/lit16 p1, p1, 0x80

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 228
    return-void
.end method

.method protected blacklist appendShortLength(I)V
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 253
    return-void
.end method

.method protected greylist appendTextString(Ljava/lang/String;)V
    .registers 2

    .line 328
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 329
    return-void
.end method

.method protected greylist appendTextString([B)V
    .registers 5

    .line 306
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_c

    .line 307
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 310
    :cond_c
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 311
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 312
    return-void
.end method

.method protected greylist appendUintvarInteger(J)V
    .registers 10

    .line 383
    nop

    .line 385
    const-wide/16 v0, 0x7f

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_5
    const/4 v5, 0x5

    if-ge v2, v5, :cond_13

    .line 386
    cmp-long v5, p1, v3

    if-gez v5, :cond_d

    .line 387
    goto :goto_13

    .line 390
    :cond_d
    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v3, v0

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 393
    :cond_13
    :goto_13
    if-lez v2, :cond_27

    .line 394
    mul-int/lit8 v3, v2, 0x7

    ushr-long v3, p1, v3

    .line 395
    and-long/2addr v3, v0

    .line 397
    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 399
    add-int/lit8 v2, v2, -0x1

    .line 400
    goto :goto_13

    .line 402
    :cond_27
    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 403
    return-void
.end method

.method protected greylist appendValueLength(J)V
    .registers 5

    .line 433
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 434
    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 435
    return-void

    .line 438
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 440
    return-void
.end method

.method protected greylist arraycopy([BII)V
    .registers 5

    .line 199
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 200
    iget p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 201
    return-void
.end method

.method public greylist make()[B
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 165
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    .line 188
    :pswitch_a
    return-object v1

    .line 183
    :pswitch_b
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v0

    if-eqz v0, :cond_27

    .line 184
    return-object v1

    .line 178
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v0

    if-eqz v0, :cond_27

    .line 179
    return-object v1

    .line 173
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v0

    if-eqz v0, :cond_27

    .line 174
    return-object v1

    .line 168
    :pswitch_20
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendRetrievePdu(I)I

    move-result v0

    if-eqz v0, :cond_27

    .line 169
    return-object v1

    .line 191
    :cond_27
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x80
        :pswitch_20
        :pswitch_a
        :pswitch_a
        :pswitch_19
        :pswitch_20
        :pswitch_12
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
