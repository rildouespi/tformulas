import 'package:flutter/material.dart';

class FormulasBiologia extends StatelessWidget {
  const FormulasBiologia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fórmulas Biologia',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF063C73),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        children: [
          _buildCategoryButton('Genética', [
            'Lei da Segregação (1ª Lei de Mendel): Cada característica é determinada por dois alelos que se separam durante a formação dos gametas.',
            'Lei da Segregação Independente (2ª Lei de Mendel): Alelos para características diferentes segregam-se independentemente uns dos outros.',
            'Probabilidade Genética Monohíbrida: P(fenótipo) = P(genótipo AA) + P(genótipo Aa) + P(genótipo aa)',
            'Frequência Alélica (Lei de Hardy-Weinberg): p + q = 1',
            'Equilíbrio de Hardy-Weinberg: p² + 2pq + q² = 1',
            'Coeficiente de Endogamia: F = (Ho - He) / He',
            'Cálculo de Ligação Gênica: RF = (número de recombinantes / total de descendentes) × 100%',
          ]),
          _buildCategoryButton('Ecologia', [
            'Crescimento Populacional: dN/dt = rN(1 - N/K)',
            'Equação Logística: N(t) = K / (1 + ((K-N₀)/N₀)e^(-rt))',
            'Crescimento Exponencial: N(t) = N₀e^(rt)',
            'Índice de Shannon (Biodiversidade): H\' = -Σ(pi × ln pi)',
            'Índice de Simpson (Dominância): D = Σ(ni(ni-1)/N(N-1))',
            'Taxa de Sobrevivência: S = Nt+1/Nt',
            'Lei de Tolerância de Shelford: A presença e o sucesso de um organismo dependem de um conjunto complexo de condições.',
          ]),
          _buildCategoryButton('Fisiologia', [
            'Taxa Metabólica Basal (TMB homens): TMB = 66 + (13,7 × peso) + (5 × altura) - (6,8 × idade)',
            'Taxa Metabólica Basal (TMB mulheres): TMB = 655 + (9,6 × peso) + (1,8 × altura) - (4,7 × idade)',
            'Equação de Henderson-Hasselbalch: pH = pKa + log([A⁻]/[HA])',
            'Lei de Fick (Difusão): J = -D(dC/dx)',
            'Pressão Osmótica: π = iCRT',
            'Equação de Nernst: E = E° - (RT/zF)ln(Q)',
            'Lei de Poiseuille (Fluxo Sanguíneo): Q = (πr⁴ΔP)/(8ηL)',
          ]),
          _buildCategoryButton('Evolução e Taxonomia', [
            'Distância Genética de Nei: D = -ln(I)',
            'Índice de Similaridade de Jaccard: J = a/(a+b+c)',
            'Teorema de Hardy-Weinberg: p² + 2pq + q² = 1',
            'Equação de Haldane (Vantagem Seletiva): Δq = spq²/(1-sq²)',
            'Relação Filogenética: Espécies que compartilham um ancestral comum mais recente são mais próximas evolutivamente.',
            'Índice de Adaptabilidade (Fitness): w = sobreviventes/total',
            'Taxa de Mutação: μ = número de mutações/número total de gametas',
          ]),
          _buildCategoryButton('Bioquímica', [
            'Equação de Michaelis-Menten: v = (Vmax × [S])/(Km + [S])',
            'Equação de Lineweaver-Burk: 1/v = (Km/Vmax)(1/[S]) + 1/Vmax',
            'Constante de Equilíbrio Bioquímico: Keq = [produtos]/[reagentes]',
            'Energia Livre de Gibbs: ΔG = ΔH - TΔS',
            'Lei de Beer-Lambert: A = ε × c × l',
            'Coeficiente de Hill (Cooperatividade): Y = [L]^n/(Kd + [L]^n)',
            'Taxa de Reação Catalítica: kcat = Vmax/[E]total',
          ]),
          _buildCategoryButton('Biologia Celular', [
            'Lei da Conservação de Massa em Reações Metabólicas: massa dos reagentes = massa dos produtos',
            'Lei de Fick para Membranas Celulares: J = P × A × (C₂ - C₁)',
            'Potencial de Membrana (Equação de Goldman): Em = (RT/F) × ln[(PK[K⁺]o + PNa[Na⁺]o + PCl[Cl⁻]i)/(PK[K⁺]i + PNa[Na⁺]i + PCl[Cl⁻]o)]',
            'Tempo de Duplicação Celular: Td = ln(2)/k',
            'Índice Mitótico: IM = (número de células em mitose/número total de células) × 100',
            'Transporte Ativo: energia = R × T × ln(C₂/C₁)',
            'Velocidade de Sedimentação: v = (2r²(ρp-ρm)g)/(9η)',
          ]),
          _buildCategoryButton('Microbiologia', [
            'Crescimento Bacteriano: N = N₀ × 2^n',
            'Tempo de Geração: g = t/n = t/log₂(N/N₀)',
            'Lei de Chick-Watson (Desinfecção): log(Nt/N₀) = -k × C × t',
            'Equação de Monod: μ = μmax × [S]/(Ks + [S])',
            'Rendimento de Biomassa: Y = ΔX/ΔS',
            'Densidade Óptica: OD = log₁₀(I₀/I)',
            'Unidades Formadoras de Colônia: UFC/mL = número de colônias × fator de diluição',
          ]),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Text('v1.0.10\nForksLabs ${DateTime.now().year}'),
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String title, List<String> formulas) {
    return ExpansionTile(
      title: Text(title),
      children: formulas.map((formula) {
        return ListTile(
          title: Text(formula),
        );
      }).toList(),
    );
  }
}
