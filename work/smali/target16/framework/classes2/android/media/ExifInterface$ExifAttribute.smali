.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final blacklist BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final greylist-max-o bytes:[B

.field public final blacklist bytesOffset:J

.field public final greylist-max-o format:I

.field public final greylist-max-o numberOfComponents:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetValue(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(IIJ[B)V
    .registers 6

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    .line 741
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 742
    iput-wide p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 743
    iput-object p5, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    .line 744
    return-void
.end method

.method synthetic constructor blacklist <init>(IIJ[BLandroid/media/ExifInterface-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method private constructor greylist-max-o <init>(II[B)V
    .registers 10

    .line 736
    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    .line 737
    return-void
.end method

.method public static greylist-max-o createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 790
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_28

    .line 791
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    new-array v2, v1, [B

    aput-byte p0, v2, v0

    .line 792
    new-instance p0, Landroid/media/ExifInterface$ExifAttribute;

    invoke-direct {p0, v1, v1, v2}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 794
    :cond_28
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 795
    new-instance v0, Landroid/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static greylist-max-o createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    .line 844
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 7

    .line 834
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 836
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 837
    array-length p1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, p1, :cond_1f

    aget-wide v3, p0, v2

    .line 838
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 837
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 840
    :cond_1f
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static greylist-max-o createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 2

    .line 785
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 775
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 777
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 778
    array-length p1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, p1, :cond_1f

    aget v3, p0, v2

    .line 779
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 781
    :cond_1f
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static greylist-max-o createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    .line 830
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8

    .line 819
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 821
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 822
    array-length p1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, p1, :cond_28

    aget-object v3, p0, v2

    .line 823
    iget-wide v4, v3, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 824
    iget-wide v3, v3, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 822
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 826
    :cond_28
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static greylist-max-o createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 800
    new-instance v0, Landroid/media/ExifInterface$ExifAttribute;

    const/4 v1, 0x2

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static greylist-max-o createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 5

    .line 771
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 7

    .line 761
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 763
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 764
    array-length p1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, p1, :cond_1f

    aget-wide v3, p0, v2

    .line 765
    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 767
    :cond_1f
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static greylist-max-o createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 4

    .line 815
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 8

    .line 804
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 806
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 807
    array-length p1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, p1, :cond_27

    aget-object v3, p0, v2

    .line 808
    iget-wide v4, v3, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 809
    iget-wide v3, v3, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 807
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 811
    :cond_27
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static greylist-max-o createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 2

    .line 757
    filled-new-array {p0}, [I

    move-result-object p0

    invoke-static {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 747
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 749
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 750
    array-length p1, p0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, p1, :cond_1f

    aget v3, p0, v2

    .line 751
    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 753
    :cond_1f
    new-instance p1, Landroid/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method private greylist-max-o getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 12

    .line 854
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Landroid/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v2, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v0, v2}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 856
    invoke-virtual {v0, p1}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 857
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_14c

    .line 958
    return-object v1

    .line 951
    :pswitch_13
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 952
    nop

    :goto_18
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_25

    .line 953
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 955
    :cond_25
    return-object p1

    .line 944
    :pswitch_26
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 945
    nop

    :goto_2b
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_39

    .line 946
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3

    .line 945
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 948
    :cond_39
    return-object p1

    .line 935
    :pswitch_3a
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroid/media/ExifInterface$Rational;

    .line 936
    nop

    :goto_3f
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_58

    .line 937
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v5, v2

    .line 938
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    int-to-long v7, v2

    .line 939
    new-instance v4, Landroid/media/ExifInterface$Rational;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v4, p1, v3

    .line 936
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 941
    :cond_58
    return-object p1

    .line 928
    :pswitch_59
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 929
    nop

    :goto_5e
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_6b

    .line 930
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    aput v2, p1, v3

    .line 929
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 932
    :cond_6b
    return-object p1

    .line 921
    :pswitch_6c
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 922
    nop

    :goto_71
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_7e

    .line 923
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v2

    aput v2, p1, v3

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 925
    :cond_7e
    return-object p1

    .line 912
    :pswitch_7f
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroid/media/ExifInterface$Rational;

    .line 913
    nop

    :goto_84
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_9b

    .line 914
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v5

    .line 915
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v7

    .line 916
    new-instance v4, Landroid/media/ExifInterface$Rational;

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface-IA;)V

    aput-object v4, p1, v3

    .line 913
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 918
    :cond_9b
    return-object p1

    .line 905
    :pswitch_9c
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 906
    nop

    :goto_a1
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_ae

    .line 907
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v4

    aput-wide v4, p1, v3

    .line 906
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 909
    :cond_ae
    return-object p1

    .line 898
    :pswitch_af
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 899
    nop

    :goto_b4
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v2, :cond_c1

    .line 900
    invoke-virtual {v0}, Landroid/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3

    .line 899
    add-int/lit8 v3, v3, 0x1

    goto :goto_b4

    .line 902
    :cond_c1
    return-object p1

    .line 868
    :pswitch_c2
    nop

    .line 869
    iget p1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_ee

    .line 870
    nop

    .line 871
    move p1, v3

    :goto_ce
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_e7

    .line 872
    iget-object v0, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, p1

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object v4

    aget-byte v4, v4, p1

    if-eq v0, v4, :cond_e4

    .line 873
    nop

    .line 874
    move v2, v3

    goto :goto_e7

    .line 871
    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_ce

    .line 877
    :cond_e7
    :goto_e7
    if-eqz v2, :cond_ee

    .line 878
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetEXIF_ASCII_PREFIX()[B

    move-result-object p1

    array-length v3, p1

    .line 882
    :cond_ee
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 883
    :goto_f3
    iget v0, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v3, v0, :cond_10f

    .line 884
    iget-object v0, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, v3

    .line 885
    if-nez v0, :cond_fe

    .line 886
    goto :goto_10f

    .line 888
    :cond_fe
    const/16 v2, 0x20

    if-lt v0, v2, :cond_107

    .line 889
    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10c

    .line 891
    :cond_107
    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    :goto_10c
    add-int/lit8 v3, v3, 0x1

    .line 894
    goto :goto_f3

    .line 895
    :cond_10f
    :goto_10f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 861
    :pswitch_114
    iget-object p1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length p1, p1

    if-ne p1, v2, :cond_136

    iget-object p1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-ltz p1, :cond_136

    iget-object p1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_136

    .line 862
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v0, v0, v3

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    new-array v2, v2, [C

    aput-char v0, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    .line 864
    :cond_136
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetASCII()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_141} :catch_142

    return-object p1

    .line 960
    :catch_142
    move-exception v0

    move-object p1, v0

    .line 961
    const-string v0, "ExifInterface"

    const-string v2, "IOException occurred during reading a value"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    return-object v1

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_114
        :pswitch_c2
        :pswitch_af
        :pswitch_9c
        :pswitch_7f
        :pswitch_114
        :pswitch_c2
        :pswitch_6c
        :pswitch_59
        :pswitch_3a
        :pswitch_26
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 6

    .line 967
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 968
    if-eqz p1, :cond_6b

    .line 971
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 972
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 974
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 975
    check-cast p1, [J

    .line 976
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 977
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 979
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 981
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3b

    .line 982
    check-cast p1, [I

    .line 983
    array-length v0, p1

    if-ne v0, v3, :cond_35

    .line 984
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 986
    :cond_35
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 988
    :cond_3b
    instance-of v0, p1, [D

    if-eqz v0, :cond_4d

    .line 989
    check-cast p1, [D

    .line 990
    array-length v0, p1

    if-ne v0, v3, :cond_47

    .line 991
    aget-wide v0, p1, v1

    return-wide v0

    .line 993
    :cond_47
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 995
    :cond_4d
    instance-of v0, p1, [Landroid/media/ExifInterface$Rational;

    if-eqz v0, :cond_63

    .line 996
    check-cast p1, [Landroid/media/ExifInterface$Rational;

    .line 997
    array-length v0, p1

    if-ne v0, v3, :cond_5d

    .line 998
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/media/ExifInterface$Rational;->calculate()D

    move-result-wide v0

    return-wide v0

    .line 1000
    :cond_5d
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_63
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 969
    :cond_6b
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getIntValue(Ljava/nio/ByteOrder;)I
    .registers 6

    .line 1006
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 1007
    if-eqz p1, :cond_42

    .line 1010
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 1011
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1013
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 1014
    check-cast p1, [J

    .line 1015
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 1016
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 1018
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1020
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    .line 1021
    check-cast p1, [I

    .line 1022
    array-length v0, p1

    if-ne v0, v3, :cond_34

    .line 1023
    aget p1, p1, v1

    return p1

    .line 1025
    :cond_34
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1027
    :cond_3a
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1008
    :cond_42
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9

    .line 1031
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    .line 1032
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 1033
    return-object v0

    .line 1035
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 1036
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1039
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 1041
    check-cast p1, [J

    .line 1042
    :cond_1d
    :goto_1d
    array-length v0, p1

    if-ge v4, v0, :cond_2e

    .line 1043
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1044
    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_1d

    .line 1045
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 1048
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1050
    :cond_33
    instance-of v2, p1, [I

    if-eqz v2, :cond_4f

    .line 1051
    check-cast p1, [I

    .line 1052
    :cond_39
    :goto_39
    array-length v0, p1

    if-ge v4, v0, :cond_4a

    .line 1053
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_39

    .line 1055
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 1058
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1060
    :cond_4f
    instance-of v2, p1, [D

    if-eqz v2, :cond_6b

    .line 1061
    check-cast p1, [D

    .line 1062
    :cond_55
    :goto_55
    array-length v0, p1

    if-ge v4, v0, :cond_66

    .line 1063
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1064
    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_55

    .line 1065
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 1068
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1070
    :cond_6b
    instance-of v2, p1, [Landroid/media/ExifInterface$Rational;

    if-eqz v2, :cond_95

    .line 1071
    check-cast p1, [Landroid/media/ExifInterface$Rational;

    .line 1072
    :cond_71
    :goto_71
    array-length v0, p1

    if-ge v4, v0, :cond_90

    .line 1073
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1074
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1076
    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_71

    .line 1077
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 1080
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1082
    :cond_95
    return-object v0
.end method

.method public greylist-max-o size()I
    .registers 3

    .line 1086
    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_BYTES_PER_FORMAT()[I

    move-result-object v0

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/media/ExifInterface;->-$$Nest$sfgetIFD_FORMAT_NAMES()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
