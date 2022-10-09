import React from 'react';
import clsx from 'clsx';
import styles from './styles.module.css';

const FeatureList = [
  {
    title: 'Developer Documentation',
    description: (
      <>
        This documentation is aimed at developers of the fiesta online pserver scene.
      </>
    ),
  },
  {
    title: 'Extensive Fileset Support',
    description: (
      <>
      Currently supported:<br></br>
      - 2016 (Gamigo - NA2016)<br></br>
      - CN (Love of Light - CN2012) <br></br>
      - Athens (Holy Light2 - TW2008)<br></br>
      </>
    ),
  },
  {
    title: 'Archive',
    description: (
      <>
        This project also includes an archive that has the files referenced in this doc including updates if needed.
      </>
    ),
  },
];

function Feature({Svg, title, description}) {
  return (
    <div className={clsx('col col--4 padding-vert--md')}>
      <div className="text--center padding-horiz--md padding-vert--md">
        <h3 className="padding-vert--md">{title}</h3>
        <p>{description}</p>
      </div>
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}
        </div>
      </div>
    </section>
  );
}
